import * as soundworks from 'soundworks/client';
import PlayerRenderer from './PlayerRenderer';

const audioContext = soundworks.audioContext;
const client = soundworks.client;

const viewTemplate = `
  <canvas class="background"></canvas>
  <div class="foreground">
    <div class="section-top flex-middle"></div>
    <div class="section-center flex-center">
      <p class="big" id="title"><%= title %></p>
    </div>
    <div class="section-bottom flex-middle">
      <p id="value0" class="big"><%= 'NaN' %></p>
      <p id="value1" class="big"><%= 'NaN' %></p>
      <p id="value2" class="big"><%= 'NaN' %></p>
    </div>
  </div>
`;

// this experience plays a sound when it starts, and plays another sound when
// other clients join the experience
export default class PlayerExperience extends soundworks.Experience {
  constructor(assetsDomain, audioFiles) {
    super();

    // services
    this.platform = this.require('platform', { features: ['web-audio', 'wake-lock'] });
    this.checkin = this.require('checkin', { showDialog: false });
    this.sync = this.require('sync');
    this.motionInput = this.require('motion-input', { descriptors: ['accelerationIncludingGravity', 'deviceorientation'] });
    this.loader = this.require('loader', {
      assetsDomain: assetsDomain,
      files: audioFiles,
    });

    // binding
    this.initTouch = this.initTouch.bind(this);
    this.touchGestureDetect = this.touchGestureDetect.bind(this);
    this.initMotion = this.initMotion.bind(this);
    this.motionGestureDetect = this.motionGestureDetect.bind(this);

    // local attributes
    this.touchDataMap = new Map();
    this.oriDataLast = [Infinity, Infinity, Infinity];
    this.oriRefreshDist = 5.; // in deg str
    this.lastShakeTime = 0.0;
    this.accDataLast = [Infinity, Infinity, Infinity];
  }

  init() {
    // initialize the view
    this.viewTemplate = viewTemplate;
    this.viewContent = { title: `Candidate <br />` + (client.index) };
    this.viewCtor = soundworks.CanvasView;
    this.viewOptions = { preservePixelRatio: true };
    this.view = this.createView();
  }

  start() {
    super.start(); // don't forget this

    if (!this.hasStarted) {
      this.init();
      this.initTouch();
      this.initMotion();
    }



    this.show();


    // receive callback
    this.receive('osc', (values) => {
      // set log on screen
      document.getElementById("title").innerHTML = values;
    });

    // receive callback
    this.receive('swipeTarget', (values) => {
      // play sound
      let src = audioContext.createBufferSource();
      src.buffer = this.loader.buffers[0];
      src.connect(audioContext.destination);
      src.start(0);
    });

  }


  //////////////////////////////////////////////////////////////////
  // ORIENTATION CONTROL
  //////////////////////////////////////////////////////////////////

  initMotion() {

    this.oriArray = new CircularArray(50, [0,0,0, 0.0]);

    // setup motion input listeners
    if (this.motionInput.isAvailable('deviceorientation')) {
      this.motionInput.addListener('deviceorientation', (data) => {

        //////// STABILIZE DATA ////

        let dataStable = [0,0,0];

        // move source: stabilize azimuth
        // let val = data[0] - this.offsetAzim;
        let val = data[0];
        if (Math.abs(data[1]) > 90){
          if( data[0] < 180)  val =  val + 180;
          else val = val - 180;
        }
        dataStable[0] = val;
      
        // apply effect (after remapping of data to traditional roll)
        val = - data[2];
        if (Math.abs(data[1]) > 90) val = 180 + val;
        dataStable[1] = - val;
        if( dataStable[1] < -180 ) dataStable[1] += (270 + 90);

        // apply volume (-90 90 whatever "effect angle" value -> DOESN T WORK)
        val = data[1];
        if( data[1] > 90 ) val = 180 - data[1];
        if( data[1] < -90 ) val = -180 - data[1];
        // val = Math.min( Math.max(0, (90 + val) / 180), 1);
        dataStable[2] = 90 + val;

        ////////

        // throttle mechanism
        let last = this.oriArray.array[this.oriArray.array.length-1];
        let dist = Math.sqrt( Math.pow(dataStable[0] - last[0], 2) +
                              Math.pow(dataStable[1] - last[1], 2) +
                              Math.pow(dataStable[2] - last[2], 2) );
        if (dist < this.oriRefreshDist) { return }
        this.oriArray.push([dataStable[0], dataStable[1], dataStable[2], this.sync.getSyncTime()]);
        

        // display orientation info on screen
        document.getElementById("value0").innerHTML = Math.round(dataStable[0] * 10) / 10;
        document.getElementById("value1").innerHTML = Math.round(dataStable[1] * 10) / 10;
        document.getElementById("value2").innerHTML = Math.round(dataStable[2] * 10) / 10;
        // send data to server
        this.send('deviceorientation', dataStable);
        // gesture detect
        this.motionGestureDetect();
      });
    }

    // setup motion input listeners (shake to change listening mode)
    if (this.motionInput.isAvailable('accelerationIncludingGravity')) {
      this.motionInput.addListener('accelerationIncludingGravity', (data) => {

          // throttle
          let delta = Math.abs(this.accDataLast[0] - data[0]) + Math.abs(this.accDataLast[1] - data[1]) + Math.abs(this.accDataLast[2] - data[2]);
          if( delta < 0.1 ){ return }

          // save new throttle values
          this.accDataLast[0] = data[0];
          this.accDataLast[1] = data[1];
          this.accDataLast[2] = data[2];

          let summedAcc = Math.abs( data[0] ) + Math.abs( data[1] ) + Math.abs( data[2] );
          this.send('deviceAcc', summedAcc );
          
          // get acceleration data
          const mag = Math.sqrt(data[0] * data[0] + data[1] * data[1] + data[2] * data[2]);


          // switch between spatialized mono sources / HOA playing on shaking (+ throttle inputs)
          if (mag > 40 && ( (audioContext.currentTime - this.lastShakeTime) > 0.5) ){
            // update throttle timer
            this.lastShakeTime = audioContext.currentTime;

            // play init orientation sound
            this.send('deviceShake', 1);
          }
      });
    }    
  }

  motionGestureDetect(){
    // detect "drop" like gesture (from flat / screen up to flat / screen bottom)
    let first = this.oriArray.array[0];
    let last = this.oriArray.array[ this.oriArray.array.length-1 ];
    let duration = last[3] - first[3];
    
    if( duration < 4.0 ) { return } // check if fast enough
    if( (Math.abs(last[2]) > 10) || (Math.abs(last[2]) > 10) ) { return } // check if flat at begin and end
    // check if reached a peak in between
    let maxValue = 0;
    this.oriArray.array.forEach((data) => {
      maxValue = Math.max(maxValue, Math.abs(data[2]));
    });
    if( maxValue > 80 ) { 
      this.send('gesture', client.index, 'drop'); 
      console.log('DROP DETECTED');
    }


  }

  //////////////////////////////////////////////////////////////////

  //////////////////////////////////////////////////////////////////
  // TOUCH CONTROL
  //////////////////////////////////////////////////////////////////

  initTouch() {
    const surface = new soundworks.TouchSurface(this.view.$el);

    // setup touch listeners (reset listener orientation on touch)
    surface.addListener('touchstart', (id, normX, normY) => {
      if (!this.isOrientationInitialized) {
        // reset
        this.touchDataMap.set(id, []);
        // save touch data
        this.touchDataMap.get(id).push([normX, normY, this.sync.getSyncTime()]);
        // send touch is on
        this.send('devicetouchIsOn', 1);
        return
      }
    });

    surface.addListener('touchmove', (id, normX, normY) => {
      // save touch data
      this.touchDataMap.get(id).push([normX, normY, this.sync.getSyncTime()]);
      // send data to server
      this.send('devicetouch', [normX, normY]);
    });

    surface.addListener('touchend', (id, normX, normY) => {
      // save touch data
      this.touchDataMap.get(id).push([normX, normY, this.sync.getSyncTime()]);
      // gesture detection
      this.touchGestureDetect(this.touchDataMap.get(id));
      // send touch is off
      this.send('devicetouchIsOn', 0);      
    });
  }

  touchGestureDetect(data) {
    let N = data.length - 1;
    let pathVect = [data[N][0] - data[0][0], data[N][1] - data[0][1]];
    let pathDuration = data[N][2] - data[0][2];

    // discard slow movements
    if (pathDuration > 2.0) return;

    // swipes
    if (pathVect[1] > 0.4) this.send('gesture', client.index, 'swipeDown');
    if (pathVect[1] < -0.4) this.send('gesture', client.index, 'swipeUp');
  }

  //////////////////////////////////////////////////////////////////

}





class CircularArray {

  constructor(arrayLength, initValue = 0) {
    this.array = [];
    for (let i = 0; i < arrayLength - 1; i++) {
      this.array.push(initValue);
    }
  }

  push(newElmt){
    this.array.push(newElmt);
    this.array.shift;
  }

  get length(){
    return this.array.length;
  }
}








