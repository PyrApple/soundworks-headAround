import * as soundworks from 'soundworks/client';

const client = soundworks.client;
const SpaceView = soundworks.SpaceView;
const View = soundworks.View;

const viewTemplate = `
  <div class="background fit-container"></div>

  <div class="foreground background-mapper">
    
    <div class="section-top flex-middle">
      <p class="big" id="title"><%= title %></p>
    </div>

  </div>
`;

/*
Control audio sources around listener's (player's) heads
*/
export default class PlayerExperience extends soundworks.Experience {
  constructor(assetsDomain) {
    super();
    
    // services
    this.checkin = this.require('checkin', { showDialog: false });
    this.sharedConfig = this.require('shared-config');
    
    // bind
    this.initTouch = this.initTouch.bind(this);
    this.updateTouch = this.updateTouch.bind(this);

    this.referencePositions = null;
    this.knownPoints = [];
  }

  init() {
    // init the area
    this.area = this.sharedConfig.get('setup.area');

    // initialize the view
    this.viewTemplate = viewTemplate;
    this.viewContent = { title: `Sound ` + (client.index) };
    this.viewCtor = View;
    this.viewOptions = { preservePixelRatio: true };
    this.view = this.createView();

    // create a background `SpaceView` to display players positions
    this.playersSpace = new SpaceView();
    this.playersSpace.setArea(this.area);

    // add space to the main view
    this.view.setViewComponent('.background', this.playersSpace);
  }

  start() {
    super.start();

    if (!this.hasStarted)
      this.init();

    this.show();

    // disable text selection, magnifier, and screen move on swipe on ios
    document.getElementsByTagName("body")[0].addEventListener("touchstart",
    function(e) { e.returnValue = false });

    this.initTouch();

    this.playersSpace.addPoint({ id:0, x:0.5, y:0.5, radius:0 }); // "invisible" point
    // setTimeout( () => { this.updateTouch(1, 0.5, 0.39); }, 100);

    // draw listener
    this.playersSpace.addPoint({ id:2, x:this.area.width/2, y:this.area.height*(1/2-0.03), radius:8, color:'red' });
    this.playersSpace.addPoint({ id:1, x:this.area.width/2, y:this.area.height/2, radius:20 });
  }

  initTouch() {
    const surface = new soundworks.TouchSurface(this.view.$el);

    // setup touch listeners (reset listener orientation on touch)
    surface.addListener('touchstart', (id, normX, normY) => {
      // turn sound on
      this.send('sourceStatus', [client.index, 1]);
      // update pos
      this.updateTouch(id, normX, normY);
    });

    surface.addListener('touchmove', (id, normX, normY) => {
      this.updateTouch(id, normX, normY);
    });

    surface.addListener('touchend', (id, normX, normY) => {
      this.updateTouch(id, normX, normY);
      // turn sound off
      this.send('sourceStatus', [client.index, 0]); 
      // invisible point
      this.playersSpace.updatePoint({ id:0, x:0.5, y:0.5, radius:0 });
    });
  }

  updateTouch(id, normX, normY){
    // if( id != 0 ) {return;} // one finger only (crap)
    // console.log(normX, normY)
    let ratioHeight = this.playersSpace.viewportHeight / this.playersSpace.areaHeight;
    let ratioWidth = this.playersSpace.viewportWidth / this.playersSpace.areaWidth;
    let x = (normX-0.5)*ratioWidth;
    let y = (normY-0.5)*ratioHeight;
    
    // visual feedback
    let point = { id:0, x:x + 0.5, y:y + 0.5, radius:50, color:'steelblue' };
    // console.log(Math.round(x*10)/10, Math.round(y*10)/10);
    this.playersSpace.updatePoint(point);
    
    // convert to polar
    let dist = Math.sqrt( Math.pow(x, 2) + Math.pow(y, 2) );
    let azim = (180 / Math.PI) * Math.atan2(x, -y);
    // console.log(Math.round(dist*10)/10, Math.round(azim*10)/10);

    // send position to server
    this.send('sourcePos', [client.index, azim, dist]);
  }

}
