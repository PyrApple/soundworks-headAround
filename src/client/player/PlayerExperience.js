import * as soundworks from 'soundworks/client';
import PlayerRenderer from './PlayerRenderer';
// import SpatSyncSourceHandler from './SpatSyncSourceHandler';
import * as Audio from './SpatSyncSourceHandler';
import './fulltilt';

const audioContext = soundworks.audioContext;
const client = soundworks.client;

const  colorList = [ '#e54444', '#798edd', '#fdd75f', '#5dd28e', '#a9b8c1' ];

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
    // this.motionGestureDetect = this.motionGestureDetect.bind(this);

    // local attributes
    this.touchDataMap = new Map();
    this.oriDataLast = [Infinity, Infinity, Infinity];
    this.oriRefreshDist = 5.; // in deg str
    this.lastShakeTime = 0.0;
    this.accDataLast = [Infinity, Infinity, Infinity];
    this.player = { soundId: -1, locationId: 1, inAmbiSphere: false };
    
  }

  init() {
    // initialize the view
    this.viewTemplate = viewTemplate;
    this.viewContent = { title: `Soundscape <br />` + (client.index) };
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

    // disable text selection, magnifier, and screen move on swipe on ios
    document.getElementsByTagName("body")[0].addEventListener("touchstart",
    function(e) { e.returnValue = false });

    // receive callback
    this.receive('soundId', (value) => {
      document.getElementById("title").innerHTML = 'Soundscape <br />' + value;
      if( value > -1 ){
        this.player.soundId = value;
        this.renderer.setColor(colorList[value]);
        this.soundHandler.setId(value);
      }
      else{
        console.log('no more sounds vailable to switch with');
      }
    });

     // receive callback
    this.receive('locationId', (value) => {
      this.player.locationId = value;
      console.log('new loc:', this.player.locationId);
      // this.renderer.setMode(value); // no auto update, let users decide when they want to send their sound on ambi speakers
    });
    
    // this.spatSyncSourceHandler = new SpatSyncSourceHandler();

    // initialize rendering
    this.player.soundId = client.index;
    this.renderer = new PlayerRenderer(90, 800, 0.001, .9, colorList[this.player.soundId]);
    this.view.addRenderer(this.renderer);

    // initialize audio
    this.soundHandler = new Audio.SoundHandler( this );
    this.soundHandler.setId( this.player.soundId );

    // set interval to update audio pos with renderer's
    let clockInterval = 0.1;
    setInterval( () => { 
      if( !this.player.inAmbiSphere )
        this.soundHandler.setPos( this.renderer.getBallPos() );
    }, 1000 * clockInterval);

  }


  //////////////////////////////////////////////////////////////////
  // ORIENTATION CONTROL
  //////////////////////////////////////////////////////////////////

  initMotion() {

    this.oriArray = new CircularArray(50, [0,0,0, 0.0]);

    // setup motion input listeners
    // if (this.motionInput.isAvailable('deviceorientation')) {
    //   this.motionInput.addListener('deviceorientation', (data) => {

        // //////// STABILIZE DATA ////

        // let dataStable = [0,0,0];

        // // move source: stabilize azimuth
        // // let val = data[0] - this.offsetAzim;
        // let val = data[0];
        // if (Math.abs(data[1]) > 90){
        //   if( data[0] < 180)  val =  val + 180;
        //   else val = val - 180;
        // }
        // dataStable[0] = val;
      
        // // apply effect (after remapping of data to traditional roll)
        // val = data[2];
        // if (Math.abs(data[1]) > 90) val = 180 - val;
        // dataStable[1] = val;
        // if( dataStable[1] < -180 ) dataStable[1] += (270 + 90);

        // // apply volume (-90 90 whatever "effect angle" value -> DOESN T WORK)
        // val = data[1];
        // if( data[1] > 90 ) val = 180 - data[1];
        // if( data[1] < -90 ) val = -180 - data[1];
        // // val = Math.min( Math.max(0, (90 + val) / 180), 1);
        // dataStable[2] = 90 + val;

        // ////////

        // // throttle mechanism
        // let last = this.oriArray.array[this.oriArray.array.length-1];
        // let dist = Math.sqrt( Math.pow(dataStable[0] - last[0], 2) +
        //                       Math.pow(dataStable[1] - last[1], 2) +
        //                       Math.pow(dataStable[2] - last[2], 2) );
        // if (dist < this.oriRefreshDist) { return }
        // this.oriArray.push([dataStable[0], dataStable[1], dataStable[2], this.sync.getSyncTime()]);
        

        // // display orientation info on screen
        // document.getElementById("value0").innerHTML = Math.round(dataStable[0] * 10) / 10;
        // document.getElementById("value1").innerHTML = Math.round(dataStable[1] * 10) / 10;
        // document.getElementById("value2").innerHTML = Math.round(dataStable[2] * 10) / 10;

        // // send data to server
        // this.sendToOsc(['deviceOrientation', dataStable[0], dataStable[1], dataStable[2] ]);
        // // update local volume pan
        // if( !this.player.inAmbiSphere )
        //   this.soundHandler.setPan(dataStable);
        
        // // gesture detect
        // // this.motionGestureDetect();

    //   });
    // }

    // Obtain a new *world-oriented* Full Tilt JS DeviceOrientation Promise
    var promise = FULLTILT.getDeviceOrientation({ 'type': 'world' });

    // Wait for Promise result
    promise.then( (deviceOrientation) => { // Device Orientation Events are supported

      // Register a callback to run every time a new 
      // deviceorientation event is fired by the browser.
      deviceOrientation.listen( () => {

        // Get the current *screen-adjusted* device orientation angles
        var currentOrientation = deviceOrientation.getScreenAdjustedEuler();

        // throttle mechanism
        let dist = Math.sqrt( Math.pow(currentOrientation.alpha - this.oriDataLast[0], 2) +
                              Math.pow(currentOrientation.beta - this.oriDataLast[1], 2) +
                              Math.pow(currentOrientation.gamma - this.oriDataLast[2], 2) );
        if (dist < this.oriRefreshDist) { return }

        if( Math.abs(currentOrientation.beta) > 90 ){ // screen topple from up to down
          
          currentOrientation.gamma = 180 - currentOrientation.gamma

          if( currentOrientation.beta > 0 ){ 
            currentOrientation.beta = 180 - currentOrientation.beta;
          }
          else{ 
            currentOrientation.beta = -180 - currentOrientation.beta;
          }
          // currentOrientation.beta = Math.sign(currentOrientation.beta) * (180 - currentOrientation.beta);
          currentOrientation.alpha = currentOrientation.alpha - 180;
        }
        else{
          if( currentOrientation.gamma < 0 ) // mod
            currentOrientation.gamma = 360 + currentOrientation.gamma;          
        }

        // console.log(currentOrientation);

        document.getElementById("value0").innerHTML = Math.round(currentOrientation.alpha * 10) / 10;
        document.getElementById("value1").innerHTML = Math.round(currentOrientation.beta * 10) / 10;
        document.getElementById("value2").innerHTML = Math.round(currentOrientation.gamma * 10) / 10;

        // send data to server
        this.sendToOsc(['deviceOrientation', currentOrientation.alpha, currentOrientation.beta, currentOrientation.gamma ]);
        // update local volume pan
        // if( !this.player.inAmbiSphere )
        //   this.soundHandler.setPan(dataStable);        

        if( !this.player.inAmbiSphere ){
          this.soundHandler.setPan(currentOrientation.gamma);
        }

      });

    }).catch( (errorMessage) => { // Device Orientation Events are not supported

      console.log(errorMessage);

      // Implement some fallback controls here...

    });



    // setup motion input listeners (shake to change listening mode)
    if (this.motionInput.isAvailable('accelerationIncludingGravity')) {
      this.motionInput.addListener('accelerationIncludingGravity', (data) => {

          this.renderer.setWeightForce(data);

          // throttle
          let delta = Math.abs(this.accDataLast[0] - data[0]) + Math.abs(this.accDataLast[1] - data[1]) + Math.abs(this.accDataLast[2] - data[2]);
          if( delta < 1.5 ){ return }

          // save new throttle values
          this.accDataLast[0] = data[0];
          this.accDataLast[1] = data[1];
          this.accDataLast[2] = data[2];

          let summedAcc = Math.abs( data[0] ) + Math.abs( data[1] ) + Math.abs( data[2] );
          this.sendToOsc(['deviceAcc', summedAcc]);
          
          // get acceleration data
          const mag = Math.sqrt(data[0] * data[0] + data[1] * data[1] + data[2] * data[2]);


          // switch between spatialized mono sources / HOA playing on shaking (+ throttle inputs)
          if (mag > 40 && ( (audioContext.currentTime - this.lastShakeTime) > 0.5) ){
            // update throttle timer
            this.lastShakeTime = audioContext.currentTime;

            // play init orientation sound
            this.sendToOsc(['deviceShake', 1]);
          }
      });
    }    

  }


  // motionGestureDetect(){
  //   // detect "drop" like gesture (from flat / screen up to flat / screen bottom)
  //   let first = this.oriArray.array[0];
  //   let last = this.oriArray.array[ this.oriArray.array.length-1 ];
  //   let duration = last[3] - first[3];
    
  //   if( duration < 4.0 ) { return } // check if fast enough
  //   if( (Math.abs(last[2]) > 10) || (Math.abs(last[2]) > 10) ) { return } // check if flat at begin and end
  //   // check if reached a peak in between
  //   let maxValue = 0;
  //   this.oriArray.array.forEach((data) => {
  //     maxValue = Math.max(maxValue, Math.abs(data[2]));
  //   });
  //   if( maxValue > 80 ) { 
  //     this.send('gesture', client.index, 'drop'); 
  //     console.log('DROP DETECTED');
  //   }


  // }

  //////////////////////////////////////////////////////////////////

  //////////////////////////////////////////////////////////////////
  // TOUCH CONTROL
  //////////////////////////////////////////////////////////////////

  initTouch() {
    const surface = new soundworks.TouchSurface(this.view.$el);

    // setup touch listeners (reset listener orientation on touch)
    surface.addListener('touchstart', (id, normX, normY) => {
      // reset
      this.touchDataMap.set(id, []);
      // save touch data
      this.touchDataMap.get(id).push([normX, normY, this.sync.getSyncTime()]);
      // send touch is on
      this.sendToOsc(['deviceTouchIsOn', 1]);
    });

    surface.addListener('touchmove', (id, normX, normY) => {
      // save touch data
      this.touchDataMap.get(id).push([normX, normY, this.sync.getSyncTime()]);
      // send data to server
      this.sendToOsc(['deviceTouch', normX, normY]);
    });

    surface.addListener('touchend', (id, normX, normY) => {
      // save touch data
      this.touchDataMap.get(id).push([normX, normY, this.sync.getSyncTime()]);
      // gesture detection
      this.touchGestureDetect(this.touchDataMap.get(id));
      // send touch is off
      this.sendToOsc(['deviceTouchIsOn', 0]);
    });
  }

  touchGestureDetect(data) {
    let N = data.length - 1;
    let pathVect = [data[N][0] - data[0][0], data[N][1] - data[0][1]];
    let pathDuration = data[N][2] - data[0][2];

    // discard slow movements
    if (pathDuration > 2.0) return;

    // swipes
    if (pathVect[1] > 0.4){
      this.send('gesture', client.index, 'swipeDown');
      if( this.player.locationId == 1 ){
        // sounds comes back to cellphone speakers
        this.player.inAmbiSphere = false;
        // visual update
        this.renderer.setMode(0);
      }
    }
    if (pathVect[1] < -0.4){
      this.send('gesture', client.index, 'swipeUp');
      if( this.player.locationId == 1 ){
        // sounds quits cellphone
        this.player.inAmbiSphere = true;
        // visual update
        this.renderer.setMode(1);
      }    
    }
  }

  //////////////////////////////////////////////////////////////////

  sendToOsc(msg){
    // only send if in Ambisonic env
    if( this.player.locationId == 0 || !this.player.inAmbiSphere ) return;
    msg.unshift(client.index);
    this.send('directToOSC', msg);
  }
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








