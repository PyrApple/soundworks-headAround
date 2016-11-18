import { Experience } from 'soundworks/server';

// server-side 'player' experience.
export default class PlayerExperience extends Experience {
  constructor(clientType) {
    super(clientType);

    // services
    this.checkin = this.require('checkin');
    this.sharedConfig = this.require('shared-config');
    this.params = this.require('shared-params');
    this.osc = this.require('osc');
    this.sync = this.require('sync');

    // binding
    this.gestureCallback = this.gestureCallback.bind(this);
    this.updateClientLocationId = this.updateClientLocationId.bind(this);

    // local attributes
    this.playerMap = new Map();
    this.maxNumPlayers = this.sharedConfig.get('setup.capacity');

    // listen to shared parameter changes
    this.params.addParamListener('player0', (value) => this.updateClientLocationId(0, value));
    this.params.addParamListener('player1', (value) => this.updateClientLocationId(1, value));
    this.params.addParamListener('player2', (value) => this.updateClientLocationId(2, value));
    this.params.addParamListener('player3', (value) => this.updateClientLocationId(3, value));
  }

  updateClientLocationId(clientId, locName){
    console.log(clientId, locName);
    // get player, return if undefined
    let player = this.playerMap.get(clientId);
    if (player === undefined ){ return; }
    // convert loc name to loc id
    let locId = ['hall', 'studio4'].indexOf(locName);
    console.log('found index:', locId);
    // update local / send player new loc id
    player.locationId = locId;
    this.send(player.client, 'locationId', player.locationId);
  }

  initOsc() {

    // when the experience has started, listen for incomming message
    this.osc.receive('/updateRequest', (values) => {
      // send update msg to OSC client (e.g. if connected after some of the players / conductor)
      console.log('update request')
    });

    // send OSC client msg when server started 
    // (TOFIX: delayed in setTimeout for now because OSC not init at start.)
    setTimeout(() => {
      // sync. clocks
      // const clockInterval = 0.01; // refresh interval in seconds
      const clockInterval = 1; // refresh interval in seconds
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

    // find available soundId, add to local map + update distant
    let availableSoundIds = [];
    for (let i = 0; i < this.maxNumPlayers; i++) { availableSoundIds.push(i) };
    this.playerMap.forEach((item, key) => {
      availableSoundIds.splice(availableSoundIds.indexOf(item.soundId), 1);
    });
    let soundId = availableSoundIds[ Math.round(Math.random() * (availableSoundIds.length-1)) ];
    this.playerMap.set(client.index, {client: client, soundId: soundId, locationId: 0} ); // locationId 0: hall, 1: studio 4
    this.send(client, 'soundId', soundId);

    // update shared param
    this.params.update('numPlayers', this.playerMap.size);
    this.params.update('player' + client.index, 'hall');

    // propagate msg from soundworks client to OSC client
    this.receive(client, 'directToOSC', (data) => {
      // send to OSC
      // console.log('direct to osc:', data)
      this.osc.send('/player', data);
    });




    // start sound source in OSC client associated with current soundworks client
    this.osc.send('/player/enterExit', [client.index, 1]);

    // // propagate msg from soundworks client to OSC client
    // this.receive(client, 'deviceorientation', (data) => {
    //   // send to OSC
    //   this.osc.send('/player/deviceOrientation', [client.index, data[0], data[1], data[2]]);
    // });

    // // propagate msg from soundworks client to OSC client
    // this.receive(client, 'deviceShake', (data) => {
    //   // send to OSC
    //   this.osc.send('/player/deviceShake', [client.index, 1]);
    // });

    // // propagate msg from soundworks client to OSC client
    // this.receive(client, 'deviceAcc', (data) => {
    //   // send to OSC
    //   this.osc.send('/player/deviceAcc', [client.index, data]);
    // });

    // gesture callback
    this.receive(client, 'gesture', this.gestureCallback);

  }

  exit(client) {
    super.exit(client);

    // remove from local map 
    this.playerMap.delete(client.index);

    // update shared param
    this.params.update('numPlayers', this.playerMap.size);
    this.params.update('player' + client.index, 'none');

    // stop sound source in OSC client associated with current soundworks client
    this.osc.send('/player/enterExit', [client.index, 0]);

  }

  gestureCallback(senderId, gestureType) {
    console.log(senderId, gestureType);
    let player = this.playerMap.get(senderId);

    switch (gestureType) {
      case 'swipeUp': 

        if( player.locationId == 0 ){ // change sound with another player
          
          // find available sound indices (e.g. not the ones of players already in ambisonic location)
          let availableSoundIds = [];
          for (let i = 0; i < this.maxNumPlayers; i++) { availableSoundIds.push(i) };
          // remove my index from availables
          availableSoundIds.splice(availableSoundIds.indexOf(player.soundId), 1);
          // remove index of players in Ambisonic location
          this.playerMap.forEach((item, key) => {
            if( item.locationId == 1 ) 
              availableSoundIds.splice(availableSoundIds.indexOf(item.soundId), 1);
          });

          if( availableSoundIds.length == 0 ){ 
            // notify player there's no possible change
            this.send(player.client, 'soundId', -1);
          }
          else{
            // get random new sound Id
            let newSoundId = availableSoundIds[ Math.round(Math.random() * (availableSoundIds.length-1)) ];
            // console.log('selected soundId', newSoundId, 'from available list', availableSoundIds);
            // notify eventual other player that got its sound stolen and it must take the old sound in its stead
            this.playerMap.forEach((item, key) => {
              if( item.soundId == newSoundId ){
                item.soundId = player.soundId;
                this.send(item.client, 'soundId', player.soundId);
                console.log('stolen from player', item.client.index, 'soundId', newSoundId);
              }
            });
            // update player
            // console.log('discared by player', player.client.index, 'soundId', player.soundId);
            this.send(player.client, 'soundId', newSoundId);
            player.soundId = newSoundId;
          }

          
        }
        else{ // notify OSC client
          this.osc.send('/player', [senderId, 'swipeUp']);
        }

        break;

      case 'swipeDown':
        if( player.locationId == 1 ){
          this.osc.send('/player', [senderId, 'swipeDown']);
        }
        break;
    }
  }

}







