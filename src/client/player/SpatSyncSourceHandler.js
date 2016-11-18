import * as ambisonics from 'ambisonics';
import * as soundworks from 'soundworks/client';

const audioContext = soundworks.audioContext;

/**
* Spherical coordinate system
* azim stands for azimuth, horizontal angle (eyes plane), 0 is facing forward, clockwise +
* elev stands for elevation, vertical angle (mouth-nose plane), 0 is facing forward, + is up
**/

export default class SpatSyncSourcesHandler {
    constructor(bufferSources) {

        // create ambisonic decoder (common to all sources)
        this.ambisonicOrder = 1;
        this.decoder = new ambisonics.binDecoder(audioContext, this.ambisonicOrder);

        // load HOA to binaural filters in decoder
        var irUrl = 'IRs/HOA3_filters_virtual.wav';
        var loader_filters = new ambisonics.HOAloader(audioContext, this.ambisonicOrder, irUrl, (bufferIr) => { this.decoder.updateFilters(bufferIr); } );
        loader_filters.load();
        
        // rotator is used to rotate the ambisonic scene (listener aim)
        this.rotator = new ambisonics.sceneRotator(audioContext, this.ambisonicOrder);

        // connect graph
        this.gainOut = audioContext.createGain();
        this.gainOut.gain.value = 1;        
        this.rotator.out.connect(this.decoder.in);
        this.decoder.out.connect(this.gainOut);
        this.gainOut.connect(audioContext.destination);

        // local attributes
        this.sourceMap = new Map();
        this.listenerAimOffset = {azim:0, elev:0};
        this.lastListenerAim = {azim:0, elev:0};
        this.buffers = bufferSources;

        // bind
        this.getNearestSource = this.getNearestSource.bind(this);

    }

    // try{
    //   this.src.stop(time);
    // }
    // catch(e){
    //   if( e.name !== 'InvalidStateError'){ console.error(e); }
    // }    

    // // start all sources
    // start(){
    //     for( let i = 0; i < this.buffers.length; i ++ ){
    //       let initAzim = (180 / (this.buffers.length - 1) ) * i - 90; // equi in front
    //       if (initAzim < 0) initAzim = 360 + initAzim;
    //       this.startSource(i, initAzim);
    //     }        
    // }

    // stop all sources
    stop(){
        this.sourceMap.forEach((spatSrc, key) => {
            spatSrc.src.stop();
        });
    }

    // init and start spat source. id is audio buffer id in loader service
    startSource(id, initAzim = 0, initElev = 0, loop = true, fadeInDuration = 0) {
        
        // check for valid audio buffer
        if( this.buffers[id] === undefined ){
            console.warn('spat source id', id, 'corresponds to empty loader.buffer, source creation aborted');
            return
        }

        // create audio source
        var src = audioContext.createBufferSource();
        src.buffer = this.buffers[id];
        src.loop = loop;

        // create source gain
        let gain = audioContext.createGain();
        gain.gain.value = 0.0;
        gain.gain.setValueAtTime(gain.gain.value, audioContext.currentTime);
        gain.gain.linearRampToValueAtTime(1.0, audioContext.currentTime + fadeInDuration);

        // create / init encoder (source-specific to be able to set source-specific position latter)
        let encoder = new ambisonics.monoEncoder(audioContext, this.ambisonicOrder);
        encoder.azim = initAzim;
        encoder.elev = initElev;
        encoder.updateGains();

        // create / init effect (source specific)
        let filter = audioContext.createBiquadFilter();
        filter.type = 'lowpass';
        filter.frequency.value = 22050;
        let effect = {filter:filter};
        
        // connect graph
        src.connect(gain);
        gain.connect(filter);
        filter.connect(encoder.in);
        encoder.out.connect(this.rotator.in);

        // play source
        src.start(0);

        // stop old source if already there
        if( this.sourceMap.has(id) ){ 
            this.sourceMap.get(id).src.stop(0);
            this.sourceMap.delete(id)
        }

        // store new spat source
        this.sourceMap.set(id, {src:src, enc:encoder, gain:gain, effect:effect});
    }

    // set source id position
    setSourcePos(id, azim, elev) {

        // check if source has been initialized (added to local map)
        if( this.sourceMap.has(id) ){

            // get spat source
            let spatSrc = this.sourceMap.get(id);
            
            // set spat source encoder azim / elev values
            let needUpdate = false;
            if( Math.abs(azim - spatSrc.enc.azim) > 3 ){
                spatSrc.enc.azim = azim;    
                needUpdate = true;
            }
            if( Math.abs(elev - spatSrc.enc.elev) > 3 ){
                spatSrc.enc.elev = elev;
                needUpdate = true;
            }
            
            // update encoder gains (apply azim / elev mod)
            if( needUpdate )
                spatSrc.enc.updateGains();
        }
    }

    // set source id effect value (value in [0, 1])
    setSourceEffect(id, value) {

        // check if source has been initialized (added to local map)
        if( this.sourceMap.has(id) ){

            // get spat source
            let spatSrc = this.sourceMap.get(id);

            // mapping to effect value
            let cutoffFreq = 11000*(Math.exp( Math.pow(value, 3) ) - 1);
            // console.log(value, cutoffFreq);
            spatSrc.effect.filter.frequency.value = cutoffFreq;
        }
    }

    // set source id volume value (value in [0, 1])
    setSourceVolume(id, value) {

        // check if source has been initialized (added to local map)
        if( this.sourceMap.has(id) ){

            // get spat source
            let spatSrc = this.sourceMap.get(id);

            // mapping to gain value
            let gain = 3.5 * value;

            // apply
            spatSrc.gain.gain.cancelScheduledValues(audioContext.currentTime);
            spatSrc.gain.gain.setValueAtTime(spatSrc.gain.gain.value, audioContext.currentTime);
            spatSrc.gain.gain.linearRampToValueAtTime(gain, audioContext.currentTime + 0.01);
            // spatSrc.gain.gain.value = gain;
            // console.log(id, gain);
        }
    }

    // set listener aim / orientation (i.e. rotate ambisonic field)
    setListenerAim(azim, elev = undefined){

        // update rotator yaw / pitch
        this.rotator.yaw = azim - this.listenerAimOffset.azim;
        this.lastListenerAim.azim = azim;
        if( elev !== undefined ){
            this.rotator.pitch = elev - this.listenerAimOffset.elev;
            this.lastListenerAim.elev = elev;
        }

        // update rotator coefficients (take into account new yaw / pitch)
        this.rotator.updateRotMtx();
    }

    // set listener aim offset (e.g. to "reset" orientation)
    resetListenerAim(azimOnly = true){

        // save new aim values
        this.listenerAimOffset.azim = this.lastListenerAim.azim;
        if( ! azimOnly ){
            this.listenerAimOffset.elev = this.lastListenerAim.azim;
        }

        // update listener aim (update encoder gains, useless when player constantly stream deviceorientation data)
        this.setListenerAim(this.lastListenerAim.azim, this.lastListenerAim.elev);
    }

    getNearestSource(azim){
        let srcId = -1;
        let dist = Infinity;
        this.sourceMap.forEach( (spatSrc, index) => {
            // make sure to get tiniest value of angle (i.e. diff 360 0 -> 0 and such)
            let newDist = spatSrc.enc.azim - azim ;
            if (newDist > 180) newDist = 360 - newDist;
            if (newDist < -180) newDist += 360;
            newDist = Math.abs(newDist);
            if( newDist < dist ){
                srcId = index;
                dist = newDist;
            }
        });
        return srcId;
    }

}
















import * as soundworks from 'soundworks/client';

const audioContext = soundworks.audioContext;
const audio = soundworks.audio;

const maxIdleTime = 6;

class LoopTrack extends audio.TimeEngine {
  constructor(sync, scheduler, local) {
    super();

    this.sync = sync;
    this.scheduler = scheduler;
    this.local = local;

    this.buffer = null;
    this.duration = 0;

    this.minCutoffFreq = 5;
    this.maxCutoffFreq = audioContext.sampleRate / 2;
    this.logCutoffRatio = Math.log(this.maxCutoffFreq / this.minCutoffFreq);

    const gain = audioContext.createGain();
    gain.gain.value = 0;

    // effect 1
    const cutoff = audioContext.createBiquadFilter();
    cutoff.connect(gain);
    cutoff.type = 'lowpass';
    cutoff.frequency.value = 20000; // this.minCutoffFreq;

    this.src = null;
    this.cutoff = cutoff;
    this.gain = gain;
    this.lastUpdated = 0;
  }

  connect(node) {
    this.gain.connect(node);
  }

  disconnect(node) {
    this.gain.disconnect(node);
  }

  setBuffer(buffer, quantization = 0) {
    this.buffer = buffer;

    if(quantization > 0)
      this.duration = Math.floor(buffer.duration / quantization + 0.5) * quantization;
    else
      this.duration = buffer.duration;
  }

  start(audioTime, offset = 0) {
    const buffer = this.buffer;

    if(buffer && offset < buffer.duration) {
      const src = audioContext.createBufferSource();
      src.connect(this.cutoff);
      src.buffer = buffer;
      src.start(audioTime, offset);

      this.src = src;
   }
  }

  stop(audioTime) {
    if(this.src) {
      this.src.stop(audioTime); // ... and stop
      this.src = null;
    }
  }

  advanceTime(syncTime) {
    const audioTime = this.sync.getAudioTime(syncTime);

    // discard source if too long without update
    if(!this.local && syncTime > this.lastUpdated + maxIdleTime) {
      this.stop(audioTime);
      return; // stop scheduling
    }
    this.start(audioTime);

    return syncTime + this.duration;
  }

  launch() {
    if(!this.src) {
      const audioTime = this.scheduler.audioTime;
      const syncTime = this.sync.getSyncTime(audioTime);
      const offset = syncTime % this.duration;
      const delay = this.duration - offset;

      this.start(audioTime, offset);

      this.scheduler.add(this, syncTime + delay, true); // schedule syncronized
      this.lastUpdated = syncTime;
    }
  }

  setEffect1Value(val) {
    const cutoffFreq = this.minCutoffFreq * Math.exp(this.logCutoffRatio * val);
    this.cutoff.frequency.value = cutoffFreq;
  }

  setGain(val, fadeTime = 0) {
    if(fadeTime > 0) {
      const param = this.gain.gain;
      const audioTime = this.scheduler.audioTime;
      const currentValue = param.value;
      param.cancelScheduledValues(audioTime);
      param.setValueAtTime(currentValue, audioTime);
      param.linearRampToValueAtTime(val, audioTime + fadeTime);
    } else {
      this.gain.gain.value = val;
    }
  }

  updateDistance(audioTime, syncTime, dist) {
    // if (dist < 3.0) {
      const spread = 1; // -3dB at spread meters away
      let gain = 0;

      if (dist !== 0) {
        gain = Math.exp(-Math.pow(dist, 2) / (Math.pow(spread, 2) / 0.7));
        gain = Math.min(1, gain);
      }

      this.setGain(gain, 0.5);

      // flag to die if too far
      if (dist > 3.0) {
        this.lastUpdated = syncTime;
      }
  }
}

export default class AudioPlayer {
  constructor(sync, scheduler, buffers, options = {}) {
    this.sync = sync;
    this.scheduler = scheduler;
    this.buffers = buffers;
    this.tracks = {};

    this.quantization = options.quantization;

    const localTrack = new LoopTrack(sync, scheduler, true);
    localTrack.connect(audioContext.destination);
    this.tracks.local = localTrack;
  }

  getRunningTrack(id) {
    let track = this.tracks[id];

    // create track if needed
    if (!track) {
      track = new LoopTrack(this.sync, this.scheduler, false);
      track.connect(audioContext.destination);
      track.setBuffer(this.buffers[id], this.quantization);

      this.tracks[id] = track;
    }

    track.launch();

    return track;
  }

  updateTrack(id, dist) {
    const audioTime = this.scheduler.audioTime;
    const syncTime = this.sync.getSyncTime(audioTime);
    const track = this.getRunningTrack(id);

    if(track)
      track.updateDistance(audioTime, syncTime, dist);
  }

  startLocalTrack(id) {
    const localTrack = this.tracks.local;
    localTrack.setBuffer(this.buffers[id], this.quantization);
    localTrack.launch();
    localTrack.setGain(1);
  }

  setEffect1Value(id, val) {
    const track = this.tracks[id];

    if(track)
      track.setEffect1Value(val);
  }

  connect(node) {
    const localTrack = this.tracks.local;
    localTrack.connect(node);
  }

  disconnect(node) {
    const localTrack = this.tracks.local;
    localTrack.disconnect(node);
  }

  stop(){
    // stop scheduler
    this.scheduler.clear();

    // stop each track
    Object.keys(this.tracks).forEach((key, index) => {
      this.tracks[key].stop(0);
    });
  }
}
