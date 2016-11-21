import { Experience } from 'soundworks/server';

const locationNames = ['hall', 'studio4'];

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
    this.updateSoundId = this.updateSoundId.bind(this);

    // local attributes
    this.playerMap = new Map();
    this.maxNumPlayers = this.sharedConfig.get('setup.capacity');

    // listen to shared parameter changes
    for (let i = 0; i < this.maxNumPlayers; i++) { 
      this.params.addParamListener('player'+i, (value) => this.updateClientLocationId(i, value));
    }
  }

  // if anything needs to append when the experience starts
  start() {
    // send update msg to OSC client (e.g. if connected after some of the players / conductor)
    this.osc.receive('/updateRequest', (values) => {
      this.playerMap.forEach((item, key) => {
        this.osc.send('/player', [item.client.index, 'soundId', item.soundId]);
        this.osc.send('/player', [item.client.index, 'enterExit', item.locationId]);
      });      
      
    });

    // sync. OSc client clock with server's (delayed in setTimeout for now because OSC not init at start.)
    setTimeout( () => {
      const clockInterval = 1; // refresh interval in seconds
      setInterval(() => { this.osc.send('/clock', this.sync.getSyncTime()); }, 1000 * clockInterval);
    }, 1000);  
  }

  // if anything needs to happen when a client enters the performance
  enter(client) {
    super.enter(client);

    // find available soundId, add to local map + update distant
    // get list of all sounds id
    let availableSoundIds = [];
    for (let i = 0; i < this.maxNumPlayers; i++) { availableSoundIds.push(i) };
    // remove sounds id already occupied
    this.playerMap.forEach((item, key) => {
      availableSoundIds.splice( availableSoundIds.indexOf( item.soundId ), 1 );
    });
    // get random sound id from remaining list
    let soundId = availableSoundIds[ Math.round(Math.random() * (availableSoundIds.length-1)) ];
    // update local
    this.playerMap.set(client.index, { client: client, soundId: soundId, locationId: 0 }); // locationId 0: hall, 1: studio 4
    // update player
    this.send(client, 'soundId', soundId);
    // update OSC client
    this.osc.send('/player', [client.index, 'soundId', soundId]);

    // update shared param
    this.params.update('numPlayers', this.playerMap.size);
    this.params.update('player' + client.index, 'hall');

    // direct forward from soundworks client to OSC client
    this.receive(client, 'directToOSC', (data) => { this.osc.send('/player', data); });

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
    this.osc.send('/player', [client.index, 'enterExit', 0]);
  }

  updateClientLocationId(clientId, locName){
    // get player
    let player = this.playerMap.get(clientId);
    // discard if undefined
    if (player === undefined ){ return; }
    // convert loc name to loc id
    let locId = locationNames.indexOf(locName);
    // if location is not -1 (none)
    if( locId >= 0 ){
      // update local / send player new loc id
      player.locationId = locId;
      this.send(player.client, 'locationId', player.locationId);
      // notify OSC client to start / stop player sound (locId and enterExit value match here)
      this.osc.send('/player', [player.client.index, 'enterExit', locId]);
    }
  }

  updateSoundId(clientId, newSoundId){
    // get player
    let player = this.playerMap.get(clientId);
    
    // give my current sound to player currently using the sound I'll have
    this.playerMap.forEach((item, key) => {
      if( item.soundId == newSoundId ){
        // set local
        item.soundId = player.soundId;
        // update player
        this.send(item.client, 'soundId', item.soundId);
        // update OSC client
        this.osc.send('/player', [item.client.index, 'soundId', item.soundId]);
      }
    });
    // update player
    // console.log('discared by player', player.client.index, 'soundId', player.soundId);
    this.send(player.client, 'soundId', newSoundId);
    player.soundId = newSoundId;
    // update OSC client
    this.osc.send('/player', [player.client.index, 'soundId', player.soundId]);    
  }

  gestureCallback(senderId, gestureType) {
    console.log(senderId, gestureType);

    // get player associated with senderId
    let player = this.playerMap.get(senderId);

    switch (gestureType) {
      case 'swipeUp': 

        // change sound with another player
        if( player.locationId == 0 ){
          
          // find available sound indices (e.g. not the ones of players already in ambisonic location)
          // get list of all sound indices
          let availableSoundIds = [];
          for (let i = 0; i < this.maxNumPlayers; i++) { availableSoundIds.push(i) };
          // remove my index from availables
          availableSoundIds.splice(availableSoundIds.indexOf(player.soundId), 1);
          // remove index of players in Ambisonic location
          this.playerMap.forEach((item, key) => {
            if( item.locationId == 1 ) 
              availableSoundIds.splice(availableSoundIds.indexOf(item.soundId), 1);
          });
          
          // notify player if there's no possible change 
          if( availableSoundIds.length == 0 ){  
            this.send(player.client, 'soundId', -1); 
          }
          
          // take sound id change into account
          else{
            // get random new sound Id from availables
            let newSoundId = availableSoundIds[ Math.round(Math.random() * (availableSoundIds.length-1)) ];
            // update sound id
            this.updateSoundId( player.client.index, newSoundId );
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







