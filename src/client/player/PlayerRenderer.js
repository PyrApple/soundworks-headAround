import { Renderer } from 'soundworks/client';

/**
 * A simple canvas renderer.
 * The class renders a dot moving over the screen and rebouncing on the edges.
 */
export default class PlayerRenderer extends Renderer {
  constructor(radius, mass, friction, elasticity = 1, color = '#ffffff') {
    super(0); // update rate = 0: synchronize updates to frame rate

    this.radius = radius; // px
    this.mass = mass; 
    this.friction = friction;
    this.elasticity = elasticity;
    this.color = color;

    this.mode = 0; // 0 hall, 1 studio4

    this.velocity = [0, 0]; // px per seconds
    this.weight = [0, 0]; // force

    this.bkgChangeColorRequested = false;
  }

  /**
   * Initialize rederer state.
   * @param {Number} dt - time since last update in seconds.
   */
  init() {
    // set initial dot position
    if (!this.pos) {
      // this.x = Math.random() * this.canvasWidth;
      // this.y = Math.random() * 
      this.pos = [this.canvasWidth / 2, this.canvasHeight / 2]; // px
    }
  }

  /**
   * Update rederer state.
   * @param {Number} dt - time since last update in seconds.
   */
  update(dt) {
    if( this.mode == 0 )
      this.updatePhysicEngine(dt);
  }

  updatePhysicEngine(dt){

    let canvasWidthHeight = [this.canvasWidth, this.canvasHeight];
    // console.log('collision', i, futurePos);

    for (let i = 0; i < this.pos.length; i++) {
      // compute acceleration
      let acceleration = this.mass * this.weight[i] - this.friction * Math.sign(this.velocity[i]) * Math.pow(this.velocity[i], 2);
      // infer future position
      let futurePos = this.pos[i] + (this.velocity[i] + acceleration * dt) * dt;
      // check for edge collisions
      if ((futurePos + this.radius) < canvasWidthHeight[i] && (futurePos - this.radius) > 0) {
        // no collision
        this.velocity[i] += acceleration * dt;
        this.pos[i] = futurePos;
        // console.log(this.x, acceleration, dt);
      } else {
        // yes collision
        this.velocity[i] *= -this.elasticity;
        futurePos = this.pos[i] + this.velocity[i] * dt;
        if ((futurePos + this.radius) < canvasWidthHeight[i] && (futurePos - this.radius) > 0) {
          // no more collision after bounce
          this.pos[i] = futurePos;
        } else {
          // still collision
          this.velocity[i] = 0;
        }

      }
    }    
  }

  setWeightForce(data){
    this.weight = [ -data[0], data[1] ];
  }

  setMode(value){
    this.mode = value;
    if( value == 1 )
      this.bkgChangeColorRequested = true;
  }

  setColor(color){
    this.color = color;
    if( this.mode == 1 ) this.bkgChangeColorRequested = true;
  }
  
  /**
   * Draw into canvas.
   * Method is called by animation frame loop in current frame rate.
   * @param {CanvasRenderingContext2D} ctx - canvas 2D rendering context
   */
  render(ctx) {

    if( this.mode == 0 ){
      // save
      ctx.save();
      // paint all canvas (clean)
      ctx.globalAlpha = 1.0;
      ctx.fillStyle = '#000000';
      ctx.rect(0, 0, ctx.canvas.width, ctx.canvas.height);
      ctx.fill();
      // draw on canvas
      ctx.beginPath();
      ctx.globalAlpha = 0.6;
      ctx.fillStyle = this.color;
      ctx.arc(this.pos[0], this.pos[1], this.radius, 0, Math.PI * 2, false);
      ctx.fill();
      ctx.closePath();
      // restore
      ctx.restore();
    }

    else{
      if( !this.bkgChangeColorRequested ){ return; }
      this.bkgChangeColorRequested = false;
      // save
      ctx.save();
      // paint all canvas
      ctx.globalAlpha = 1.0;
      ctx.fillStyle = this.color;
      ctx.rect(0, 0, ctx.canvas.width, ctx.canvas.height);
      ctx.fill();
      // restore
      ctx.restore();        
      
    }
  }

}
