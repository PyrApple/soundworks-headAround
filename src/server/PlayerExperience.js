import { Experience } from 'soundworks/server';

// server-side 'player' experience.
export default class PlayerExperience extends Experience {
  constructor(clientType) {
    super(clientType);

    // services
    this.checkin = this.require('checkin');
    this.sharedConfig = this.require('shared-config');
    this.osc = this.require('osc');
    this.sync = this.require('sync');

    // binding
    this.gestureCallback = this.gestureCallback.bind(this);

    // local attributes
    this.playerMap = new Map();
    this.oriMap = new Map();
    this.gestureMap = new Map();
  }

  initOsc() {

    // when the experience has started, listen for incomming message
    this.osc.receive('/updateRequest', (values) => {
      // send clients coords
      let coordinates = this.sharedConfig.get('setup.coordinates');
      let coordMsg = [];
      coordinates.forEach((item) => { coordMsg.push(item[0], item[1]) });
      this.osc.send('/coordinates', coordMsg);
      console.log('sent', coordMsg);
    });

    // send OSC client msg when server started 
    // (TOFIX: delayed in setTimeout for now because OSC not init at start.)
    setTimeout(() => {
      // sync. clocks
      const clockInterval = 0.01; // refresh interval in seconds
      setInterval(() => { this.osc.send('/clock', this.sync.getSyncTime()); }, 1000 * clockInterval);
    }, 1000);

  }

  // if anything needs to append when the experience starts
  start() {
    this.initOsc();
  }

  // if anything needs to happen when a client enters the performance (*i.e.*
  // starts the experience on the client side), write it in the `enter` method
  enter(client) {
    super.enter(client);
    // // send a message to all the other clients of the same type
    // this.broadcast(client.type, client, 'play');

    // add to local map 
    this.playerMap.set(client.index, client);
    this.gestureMap.set(client.index, new Map());

    // start sound source in OSC client associated with current soundworks client
    this.osc.send('/player/enterExit', [client.index, 1]);

    // propagate msg from soundworks client to OSC client
    this.receive(client, 'deviceorientation', (data) => {
      // save local
      this.oriMap.set(client.index, data);
      // send to OSC
      this.osc.send('/player/deviceOrientation', [client.index, data[0], data[1], data[2]]);
    });

    // propagate msg from soundworks client to OSC client
    this.receive(client, 'devicetouch', (data) => {
      // save local
      this.oriMap.set(client.index, data);
      // send to OSC
      this.osc.send('/player/deviceTouch', [client.index, data[0], data[1]]);
    });

    // gesture callback
    this.receive(client, 'gesture', this.gestureCallback);

  }

  exit(client) {
    super.exit(client);

    // remove from local map 
    this.playerMap.delete(client.index);
    this.oriMap.delete(client.index);
    this.gestureMap.delete(client.index);

    // stop sound source in OSC client associated with current soundworks client
    this.osc.send('/player/enterExit', [client.index, 0]);

  }

  gestureCallback(senderId, gestureType) {
    console.log(senderId, gestureType);
    // discard if client orientation data not recorded yet
    if (!this.oriMap.has(senderId)) return
    let ori = this.oriMap.get(senderId);
    let aimAzim = ori[0] * (Math.PI / 180); // TODO: need 360 modulo for ori?

    switch (gestureType) {
      case 'swipeUp': // find targeted player and send a sound
        console.log('swipe up');

        // get sender coords
        let coordinates = this.sharedConfig.get('setup.coordinates');
        let senderCoord = coordinates[senderId];

        // find targeted player (smaller angle)
        let minDistDeg = Infinity;
        let targetId = -1;
        this.playerMap.forEach((client, receiverId) => {
          // discard sender itself
          if (receiverId === senderId) return;

          let playerCoord = coordinates[receiverId];
          let playerSenderVect = [playerCoord[0] - senderCoord[0], playerCoord[1] - senderCoord[1]];
          // aim vect is facing center table + azim offset
          let aimVect = [playerCoord[0] * Math.cos(aimAzim) - playerCoord[1] * Math.sin(aimAzim),
            playerCoord[0] * Math.sin(aimAzim) + playerCoord[1] * Math.cos(aimAzim)
          ];
          // delta angle in degrees
          let dist = Math.atan2(playerSenderVect[1] - aimVect[1], playerSenderVect[0] - aimVect[0]) * 180 / Math.PI;
          // var angleDeg = Math.atan2(p2.y - p1.y, p2.x - p1.x) * 180 / Math.PI;
          if (Math.abs(dist) < minDistDeg) {
            minDistDeg = dist;
            targetId = receiverId;
          }
          console.log(receiverId, dist, minDistDeg, targetId);
        });

        // send msg to this player
        if (targetId > -1) {
          console.log('sending swiped sound to client', targetId);
          this.send(this.playerMap.get(targetId), 'swipeTarget');
        }
        break;

      case 'swipeDown':
        this.osc.send('/player/swipeDown', senderId);
        break;

      case 'drop': // se coucher
        console.log('drop detected from', senderId);
        // save new drop data
        this.gestureMap.get(senderId).set('drop', this.sync.getSyncTime());
        // loop over drop data to check if gesture is sync between players
        let latest = 0;
        let earliest = Infinity;
        let atLeastOneMissing = false;
        this.gestureMap.forEach((playerGestureMap, clientId) => {
          // one of the client never did the gesture
          if (!playerGestureMap.has('drop')) {
            atLeastOneMissing = true;
            return // doesn't really escape from forEach loop, useless here but the idea would be to break indeed
          }
          let time = playerGestureMap.get('drop');
          latest = Math.max(latest, time);
          earliest = Math.min(earliest, time);
        });

        if( ((latest - earliest) < 10) && !atLeastOneMissing ){
          console.log('SYNC DROP DETECTED');
          this.osc.send('/gesture/drop', 1);
        }

        break
    }
  }

}







