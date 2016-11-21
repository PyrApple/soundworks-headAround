import * as ambisonics from 'ambisonics';
import * as soundworks from 'soundworks/client';

const audioContext = soundworks.audioContext;

export class SoundHandler {
  constructor( soundworksExperience ) {
    this.soundworksExperience = soundworksExperience;
    
    this.ambiSpat = new AmbiSpat();
    this.ambiSpat.out.connect( audioContext.destination );

    this.id2buffersTable = [ [0, 1, 2], [3, 4, 5], [6, 7, 8], [9, 10 ,11] ];
    this.audioSet = [];
    for (let i = 0; i < 3; i++) {
        let audioSource = new AudioSource(soundworksExperience);
        audioSource.out.connect(this.ambiSpat.getInput(0)); // all connected to same inlet, one "spat" source
        this.audioSet.push( audioSource );
    }
    
    this.simpleSources = new Map();
  }

  // ID of 3-sound group to use
  setId(id){
    // loop across source set
    this.audioSet.forEach((audioSource, index) => {
        // stop eventual old sources
        audioSource.stop();
        // start new set
        let idOfBufferToBeUsed = this.id2buffersTable[id][index];
        audioSource.start(idOfBufferToBeUsed, 0, true);
    });    
  }

  // simple sound play (no spat)
  playSound(id){

    let audioSource = this.simpleSources.get(id);

    // create if doesn't exist
    if( audioSource === undefined ){
        audioSource = new AudioSource(this.soundworksExperience);
        this.simpleSources.set(id, audioSource );
    }
    
    audioSource.stop();
    audioSource.start(id, 0, false);
  }

  setPos(normXY){
    let azim = (180 / Math.PI) * Math.atan2( normXY[0], -normXY[1] );
    // console.log(normXY, azim);
    this.ambiSpat.setSourcePos(0, -azim, 0);
  }

  setPan(oriDeg){
    // norm data
    let ori = oriDeg * Math.PI / 180;
    let pan = [Math.max(Math.cos(ori), 0.0), 
               Math.abs(Math.sin(ori)), 
               Math.max(Math.cos(ori+Math.PI), 0.0) ];
    for (let i = 0; i < 3; i++) {
        this.audioSet[i].setVolume(pan[i]);
    }
    // console.log(Math.round(pan1*10)/10, Math.round(pan2*10)/10, Math.round(pan3*10)/10);
  }

}


/**
* Spherical coordinate system
* azim stands for azimuth, horizontal angle (eyes plane), 0 is facing forward, clockwise +
* elev stands for elevation, vertical angle (mouth-nose plane), 0 is facing forward, + is up
**/
export class AmbiSpat {
    constructor() {

        // create ambisonic decoder (common to all sources)
        this.ambisonicOrder = 2;
        this.decoder = new ambisonics.binDecoder(audioContext, this.ambisonicOrder);

        // load HOA to binaural filters in decoder
        var irUrl = 'IRs/HOA3_filters_virtual.wav';
        var loader_filters = new ambisonics.HOAloader(audioContext, this.ambisonicOrder, irUrl, (bufferIr) => { this.decoder.updateFilters(bufferIr); } );
        loader_filters.load();
        
        // rotator is used to rotate the ambisonic scene (listener aim)
        this.rotator = new ambisonics.sceneRotator(audioContext, this.ambisonicOrder);

        // create input / output nodes
        this.out = audioContext.createGain();
        this.out.gain.value = 1;

        // connect graph
        this.rotator.out.connect(this.decoder.in);
        this.decoder.out.connect(this.out);

        // local attributes
        this.sourceMap = new Map();
        this.listener = { aim: {azim:0, elev:0}, aimOffset: {azim:0, elev:0} };
    }

    // get / create input for new source to be plugged in
    getInput(id){
        // input already exists
        if( this.sourceMap.has(id) )
            return this.sourceMap.get(id).encoder.in;

        // create new input
        let encoder = new ambisonics.monoEncoder(audioContext, this.ambisonicOrder);
        // init input
        encoder.azim = 0; encoder.elev = 0; encoder.updateGains();
        encoder.out.connect(this.rotator.in);
        // store local
        this.sourceMap.set(id, { encoder:encoder });
        // return input
        return encoder.in;
    }

    // set source id position
    setSourcePos(id, azim, elev) {

        // check if source has been initialized (added to local map)
        if( !this.sourceMap.has(id) )
            return

        // get spat source
        let spatSrc = this.sourceMap.get(id);
            
        // throttle on set spat source encoder azim / elev values
        if( Math.abs(azim - spatSrc.encoder.azim) < 3 && Math.abs(elev - spatSrc.encoder.elev) < 3 )
            return

        // update pos
        spatSrc.encoder.azim = azim;
        spatSrc.encoder.elev = elev;
        spatSrc.encoder.updateGains();
    }

    // set listener aim / orientation (i.e. rotate ambisonic field)
    setListenerAim(azim, elev){

        // update rotator yaw / pitch
        this.rotator.yaw = azim - this.listener.aimOffset.azim;
        this.rotator.pitch = elev - this.listener.aimOffset.elev;
        this.rotator.updateRotMtx();

        // update local stored
        this.listener.aim.azim = azim;
        this.listener.aim.elev = elev;
    }

    // set listener aim offset (e.g. to "reset" orientation)
    resetListenerAim(azimOnly = true){

        // save new aim values
        this.listener.aimOffset.azim = this.listener.aim.azim;
        if( ! azimOnly ){
            this.listener.aimOffset.elev = this.listener.aim.elev;
        }

        // update listener aim (update encoder gains, useless when player constantly stream deviceorientation data)
        this.setListenerAim(this.listener.aim.azim, this.listener.aim.elev);
    }

}

export class AudioSource {
  constructor( soundworksExperience ) {
    this.buffers = soundworksExperience.loader.buffers;
    this.sync = soundworksExperience.sync;

    // create output (not deleted when source stops)
    this.out = audioContext.createGain();
    this.out.gain.value = 1;
    // dummy src
    this.src = audioContext.createBufferSource();
  }

  // start source at time, if time > 0, start source in as many seconds, 
  // if time < 0, start source from position in buffer as if source started 
  // then (eventually loop)
  start(idOfBufferToBeUsed, time, loop) {
    // create buffer source
    let src = audioContext.createBufferSource();
    src.buffer = this.buffers[idOfBufferToBeUsed];
    src.loop = loop;
    // connect source
    src.connect(this.out);
    // start source
    src.start();

    // const now = this.sync.getAudioTime(syncTime);
    // if( time >= 0 )
    //     src.start( now + time, offset );
    // else{
    //     let beenPlayingSince = -time;
    //     if( beenPlayingSince < src.buffer.duration )
    //         src.start( now, beenPlayingSince );
    //     else if( loop ){
    //         // WARNING: source will probably loop on reduced bufer
    //         modTime = beenPlayingSince % src.buffer.duration;
    //         src.start(now, modTime);
    //     }

    // }

    // store source
    this.src = src;
  }

  stop(){
    try{ this.src.stop(0); }
    catch(e){ if( e.name !== 'InvalidStateError'){ console.error(e); } }
  }

  setVolume(volume){
    this.out.gain.value = volume;
  }

}












// import * as soundworks from 'soundworks/client';

// const audioContext = soundworks.audioContext;
// const audio = soundworks.audio;

// const maxIdleTime = 6;

// class LoopTrack extends audio.TimeEngine {
//   constructor(sync, scheduler, local) {
//     super();

//     this.sync = sync;
//     this.scheduler = scheduler;
//     this.local = local;

//     this.buffer = null;
//     this.duration = 0;

//     this.minCutoffFreq = 5;
//     this.maxCutoffFreq = audioContext.sampleRate / 2;
//     this.logCutoffRatio = Math.log(this.maxCutoffFreq / this.minCutoffFreq);

//     const gain = audioContext.createGain();
//     gain.gain.value = 0;

//     // effect 1
//     const cutoff = audioContext.createBiquadFilter();
//     cutoff.connect(gain);
//     cutoff.type = 'lowpass';
//     cutoff.frequency.value = 20000; // this.minCutoffFreq;

//     this.src = null;
//     this.cutoff = cutoff;
//     this.gain = gain;
//     this.lastUpdated = 0;
//   }

//   connect(node) {
//     this.gain.connect(node);
//   }

//   disconnect(node) {
//     this.gain.disconnect(node);
//   }

//   setBuffer(buffer, quantization = 0) {
//     this.buffer = buffer;

//     if(quantization > 0)
//       this.duration = Math.floor(buffer.duration / quantization + 0.5) * quantization;
//     else
//       this.duration = buffer.duration;
//   }

//   start(audioTime, offset = 0) {
//     const buffer = this.buffer;

//     if(buffer && offset < buffer.duration) {
//       const src = audioContext.createBufferSource();
//       src.connect(this.cutoff);
//       src.buffer = buffer;
//       src.start(audioTime, offset);

//       this.src = src;
//    }
//   }

//   stop(audioTime) {
//     if(this.src) {
//       this.src.stop(audioTime); // ... and stop
//       this.src = null;
//     }
//   }

//   advanceTime(syncTime) {
//     const audioTime = this.sync.getAudioTime(syncTime);

//     // discard source if too long without update
//     if(!this.local && syncTime > this.lastUpdated + maxIdleTime) {
//       this.stop(audioTime);
//       return; // stop scheduling
//     }
//     this.start(audioTime);

//     return syncTime + this.duration;
//   }

//   launch() {
//     if(!this.src) {
//       const audioTime = this.scheduler.audioTime;
//       const syncTime = this.sync.getSyncTime(audioTime);
//       const offset = syncTime % this.duration;
//       const delay = this.duration - offset;

//       this.start(audioTime, offset);

//       this.scheduler.add(this, syncTime + delay, true); // schedule syncronized
//       this.lastUpdated = syncTime;
//     }
//   }

//   setEffect1Value(val) {
//     const cutoffFreq = this.minCutoffFreq * Math.exp(this.logCutoffRatio * val);
//     this.cutoff.frequency.value = cutoffFreq;
//   }

//   setGain(val, fadeTime = 0) {
//     if(fadeTime > 0) {
//       const param = this.gain.gain;
//       const audioTime = this.scheduler.audioTime;
//       const currentValue = param.value;
//       param.cancelScheduledValues(audioTime);
//       param.setValueAtTime(currentValue, audioTime);
//       param.linearRampToValueAtTime(val, audioTime + fadeTime);
//     } else {
//       this.gain.gain.value = val;
//     }
//   }

//   updateDistance(audioTime, syncTime, dist) {
//     // if (dist < 3.0) {
//       const spread = 1; // -3dB at spread meters away
//       let gain = 0;

//       if (dist !== 0) {
//         gain = Math.exp(-Math.pow(dist, 2) / (Math.pow(spread, 2) / 0.7));
//         gain = Math.min(1, gain);
//       }

//       this.setGain(gain, 0.5);

//       // flag to die if too far
//       if (dist > 3.0) {
//         this.lastUpdated = syncTime;
//       }
//   }
// }

// export default class AudioPlayer {
//   constructor(sync, scheduler, buffers, options = {}) {
//     this.sync = sync;
//     this.scheduler = scheduler;
//     this.buffers = buffers;
//     this.tracks = {};

//     this.quantization = options.quantization;

//     const localTrack = new LoopTrack(sync, scheduler, true);
//     localTrack.connect(audioContext.destination);
//     this.tracks.local = localTrack;
//   }

//   getRunningTrack(id) {
//     let track = this.tracks[id];

//     // create track if needed
//     if (!track) {
//       track = new LoopTrack(this.sync, this.scheduler, false);
//       track.connect(audioContext.destination);
//       track.setBuffer(this.buffers[id], this.quantization);

//       this.tracks[id] = track;
//     }

//     track.launch();

//     return track;
//   }

//   updateTrack(id, dist) {
//     const audioTime = this.scheduler.audioTime;
//     const syncTime = this.sync.getSyncTime(audioTime);
//     const track = this.getRunningTrack(id);

//     if(track)
//       track.updateDistance(audioTime, syncTime, dist);
//   }

//   startLocalTrack(id) {
//     const localTrack = this.tracks.local;
//     localTrack.setBuffer(this.buffers[id], this.quantization);
//     localTrack.launch();
//     localTrack.setGain(1);
//   }

//   setEffect1Value(id, val) {
//     const track = this.tracks[id];

//     if(track)
//       track.setEffect1Value(val);
//   }

//   connect(node) {
//     const localTrack = this.tracks.local;
//     localTrack.connect(node);
//   }

//   disconnect(node) {
//     const localTrack = this.tracks.local;
//     localTrack.disconnect(node);
//   }

//   stop(){
//     // stop scheduler
//     this.scheduler.clear();

//     // stop each track
//     Object.keys(this.tracks).forEach((key, index) => {
//       this.tracks[key].stop(0);
//     });
//   }
// }
