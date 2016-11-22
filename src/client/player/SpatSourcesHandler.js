import * as ambisonics from 'ambisonics';
import * as soundworks from 'soundworks/client';

const audioContext = soundworks.audioContext;

/**
* Spherical coordinate system
* azim stands for azimuth, horizontal angle (eyes plane), 0 is facing forward, clockwise +
* elev stands for elevation, vertical angle (mouth-nose plane), 0 is facing forward, + is up
**/

export default class SpatSourcesHandler {
    constructor(bufferSources, roomReverb = false, ambiOrder = 3) {
        
        // create ambisonic decoder (common to all sources)
        this.ambisonicOrder = ambiOrder;
        this.decoder = new ambisonics.binDecoder(audioContext, this.ambisonicOrder);

        // master gain out
        this.out = audioContext.createGain();
        this.out.gain.value = 1;

        // load HOA to binaural filters in decoder
        var irUrl = 'IRs/HOA3_filters_virtual.wav';
        if( roomReverb ){
            // different IR for reverb (+ gain adjust for iso-loudness)
            irUrl = 'IRs/room-medium-1-furnished-src-20-Set1_16b.wav';
            this.out.gain.value *= 0.5;
        }

        var loader_filters = new ambisonics.HOAloader(audioContext, this.ambisonicOrder, irUrl, (bufferIr) => { this.decoder.updateFilters(bufferIr); } );
        loader_filters.load();
        
        // rotator is used to rotate the ambisonic scene (listener aim)
        this.rotator = new ambisonics.sceneRotator(audioContext, this.ambisonicOrder);

        // connect graph
        this.rotator.out.connect(this.decoder.in);
        this.decoder.out.connect(this.out);
        this.out.connect(audioContext.destination);

        // local attributes
        this.sourceMap = new Map();
        this.listenerAimOffset = {azim:0, elev:0};
        this.lastListenerAim = {azim:0, elev:0};
        this.buffers = bufferSources;
    }

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

        // play source (random location in buffer)
        src.start(0, (Math.random() - 0.001) * src.buffer.duration );

        // stop old source if already there
        if( this.sourceMap.has(id) ){ 
            this.sourceMap.get(id).src.stop(0);
            this.sourceMap.delete(id)
        }

        // store new spat source
        this.sourceMap.set(id, {src:src, enc:encoder, gain:gain, effect:effect});
    }

    // stop audio source id
    stopSource(id, fadeOutDuration = 0){
        // get spat source
        let spatSrc = this.sourceMap.get(id);
        if( spatSrc === undefined ) { return; }
        // fade out
        spatSrc.gain.gain.cancelScheduledValues(audioContext.currentTime);
        spatSrc.gain.gain.setValueAtTime(spatSrc.gain.gain.value, audioContext.currentTime);
        spatSrc.gain.gain.linearRampToValueAtTime(0.0, audioContext.currentTime + fadeOutDuration);
        // stop source
        spatSrc.src.stop(audioContext.currentTime + fadeOutDuration);
        // remove source from local map (to force creation of a new one later and allow ovelap of serveral time the same source on consecutive touches)
        setTimeout( () => { this.sourceMap.delete(id) }, fadeOutDuration+0.1);

    }

    // set source id position
    setSourcePos(id, azim, elev, dist) {

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

            // set distance gain
            let safeDist = Math.max(0.1, dist);
            let gain = Math.min(2, 1/Math.pow(safeDist, 2));
            // console.log(safeDist, gain);
            this.setSourceVolume(id, gain);

        }
    }

    // // set source id effect value (value in [0, 1])
    // setSourceEffect(id, value) {

    //     // check if source has been initialized (added to local map)
    //     if( this.sourceMap.has(id) ){

    //         // get spat source
    //         let spatSrc = this.sourceMap.get(id);

    //         // mapping to effect value
    //         let cutoffFreq = 11000*(Math.exp( Math.pow(value, 3) ) - 1);
    //         // console.log(value, cutoffFreq);
    //         spatSrc.effect.filter.frequency.value = cutoffFreq;
    //     }
    // }

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

    // // set listener aim / orientation (i.e. rotate ambisonic field)
    // setListenerAim(azim, elev = undefined){

    //     // update rotator yaw / pitch
    //     this.rotator.yaw = azim - this.listenerAimOffset.azim;
    //     this.lastListenerAim.azim = azim;
    //     if( elev !== undefined ){
    //         this.rotator.pitch = elev - this.listenerAimOffset.elev;
    //         this.lastListenerAim.elev = elev;
    //     }

    //     // update rotator coefficients (take into account new yaw / pitch)
    //     this.rotator.updateRotMtx();
    // }

    // // set listener aim offset (e.g. to "reset" orientation)
    // resetListenerAim(azimOnly = true){

    //     // save new aim values
    //     this.listenerAimOffset.azim = this.lastListenerAim.azim;
    //     if( ! azimOnly ){
    //         this.listenerAimOffset.elev = this.lastListenerAim.azim;
    //     }

    //     // update listener aim (update encoder gains, useless when player constantly stream deviceorientation data)
    //     this.setListenerAim(this.lastListenerAim.azim, this.lastListenerAim.elev);
    // }

}
