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
        // throttle mechanism
        let last = this.oriArray.array[this.oriArray.array.length-1];
        let dist = Math.sqrt( Math.pow(data[0] - last[0], 2) +
                              Math.pow(data[1] - last[1], 2) +
                              Math.pow(data[2] - last[2], 2) );
        if (dist < this.oriRefreshDist) { return }
        this.oriArray.push([data[0], data[1], data[2], this.sync.getSyncTime()]);
        
        // display orientation info on screen
        document.getElementById("value0").innerHTML = Math.round(data[0] * 10) / 10;
        document.getElementById("value1").innerHTML = Math.round(data[1] * 10) / 10;
        document.getElementById("value2").innerHTML = Math.round(data[2] * 10) / 10;
        // send data to server
        this.send('deviceorientation', data);
        // gesture detect
        this.motionGestureDetect();
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
        return
      }
    });

    surface.addListener('touchmove', (id, normX, normY) => {
      // save touch data
      this.touchDataMap.get(id).push([normX, normY, this.sync.getSyncTime()]);
    });

    surface.addListener('touchend', (id, normX, normY) => {
      // save touch data
      this.touchDataMap.get(id).push([normX, normY, this.sync.getSyncTime()]);
      // gesture detection
      this.touchGestureDetect(this.touchDataMap.get(id));
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








