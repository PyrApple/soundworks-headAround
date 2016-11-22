import * as soundworks from 'soundworks/client';
import SpatSourcesHandler from './SpatSourcesHandler';

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
    this.sync = this.require('sync');
    this.loader = this.require('loader', {
      assetsDomain: assetsDomain,
      files: audioFiles,
    });

    // binding
    // ...

    // local attributes
    // ...
    
  }

  init() {
    // initialize the view
    this.viewTemplate = viewTemplate;
    this.viewContent = { title: `Heard Around`};
    this.viewCtor = soundworks.CanvasView;
    this.viewOptions = { preservePixelRatio: true };
    this.view = this.createView();
  }

  start() {
    super.start(); // don't forget this

    if (!this.hasStarted) {
      this.init();
    }

    this.show();

    // disable text selection, magnifier, and screen move on swipe on ios
    document.getElementsByTagName("body")[0].addEventListener("touchstart",
    function(e) { e.returnValue = false });

    // init audio source spatializer
    let roomReverb = false;
    let ambiOrder = 3;
    this.spatSourceHandler = new SpatSourcesHandler(this.loader.buffers, roomReverb, ambiOrder);

    // receive callback
    this.receive('sourceStatus', (value) => {
      console.log('sourceStatus', value);
      let srcId = value[0];
      let status = value[1];
      let fadeInOutTime = 1; // in sec
      console.log('start source', srcId, status);
      if(status)
        this.spatSourceHandler.startSource(srcId, 0, 0, true, fadeInOutTime);
      else
        this.spatSourceHandler.stopSource(srcId, fadeInOutTime);
    });

    this.receive('sourcePos', (value) => {
      console.log('sourcePos', value);
      let srcId = value[0];
      let azim = -value[1];
      let dist = 2*value[2] + 0.6;
      console.log(azim, dist);
      this.spatSourceHandler.setSourcePos( srcId, azim, 0, dist );
    });


  }


}









