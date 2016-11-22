import { Experience } from 'soundworks/server';

const locationNames = ['hall', 'studio4'];

// server-side 'player' experience.
export default class PlayerExperience extends Experience {
  constructor(clientType) {
    super(clientType);

    // services
    this.checkin = this.require('checkin');
    this.sync = this.require('sync');
    this.sharedConfig = this.require('shared-config');
    this.sharedConfig.share('setup', 'soloist');

    // local attributes
    this.soloistMap = new Map();
  }

  // if anything needs to append when the experience starts
  start() {
  }

  // if anything needs to happen when a client enters the performance
  enter(client) {
    super.enter(client);

    switch (client.type) {
      case 'soloist':
        
        // register soloist
        this.soloistMap.set(client.index, ( { client: client, azim: 0, dist: 0, status: 0 } ));

        // update status callback
        this.receive(client, 'sourceStatus', (data) => {
          // store local
          let soloist = this.soloistMap.get(client.index);
          soloist.status = data[1];
          // update players
          this.broadcast('player', null, 'sourceStatus', data);
        });

        // update pos callback
        this.receive(client, 'sourcePos', (data) => {
          // store local
          let soloist = this.soloistMap.get(client.index);
          soloist.azim = data[1];
          soloist.dist = data[2];
          
          // update players
          this.broadcast('player', null, 'sourcePos', data);
        });

        break;

      case 'player':
        // update player on active sources (i.e. connected soloists)
        this.soloistMap.forEach( (item) => {
          this.send(client, 'sourceStatus', [item.client.index, item.status]);
          this.send(client, 'sourcePos', [item.client.index, item.azim, item.dist] );
        });
        
        break;
    }
  }

  exit(client) {
    super.exit(client);

    switch (client.type) {
      case 'soloist':
        // unregister soloist
        this.soloistMap.delete(client.index);
        // announce removed source to players (make sure if e.g. screen refreshed while finger on it)
        this.broadcast('player', null, 'sourceStatus', [client.index, 0]);
        break;
    }

  }

}







