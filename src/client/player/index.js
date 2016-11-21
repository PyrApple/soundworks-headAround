// import client side soundworks and player experience
import * as soundworks from 'soundworks/client';
import PlayerExperience from './PlayerExperience.js';
import viewTemplates from '../shared/viewTemplates';
import viewContent from '../shared/viewContent';

// list of files to load (passed to the experience)
const files = [
  'sounds/w01-drops-A-C2.mp3', 
  'sounds/w02-drops-A-E2.mp3', 
  'sounds/w03-drops-A-G2.mp3', 
  'sounds/100_celt_bass copy 2.mp3',
  'sounds/100_celt_bass copy.mp3',
  'sounds/100_celt_bass.mp3',
  'sounds/100_celt_drums copy 2.mp3',
  'sounds/100_celt_drums copy.mp3',
  'sounds/100_celt_drums.mp3',
  'sounds/100_celt_melody copy 2.mp3',
  'sounds/100_celt_melody copy.mp3',
  'sounds/100_celt_melody.mp3',
  'sounds/100_metro_drums copy 2.mp3',
  'sounds/100_metro_drums copy.mp3',
  'sounds/100_metro_drums.mp3',
];

// launch application when document is fully loaded
window.addEventListener('load', () => {
  // configuration received from the server through the `index.html`
  // @see {~/src/server/index.js}
  // @see {~/html/default.ejs}
  const { appName, clientType, socketIO, assetsDomain }  = window.soundworksConfig;
  // initialize the 'player' client
  soundworks.client.init(clientType, { appName, socketIO });
  soundworks.client.setViewContentDefinitions(viewContent);
  soundworks.client.setViewTemplateDefinitions(viewTemplates);

  // create client side (player) experience
  const experience = new PlayerExperience(assetsDomain, files);

  // start the client
  soundworks.client.start();
});
