import * as soundworks from 'soundworks/client';
import viewTemplates from '../shared/viewTemplates';
import viewContent from '../shared/viewContent';

window.addEventListener('load', () => {
  // configuration received from the server through the `index.html`
  // @see {~/src/server/index.js}
  // @see {~/html/default.ejs}
  const { appName, clientType, socketIO }  = window.soundworksConfig;
  // initialize the 'player' client
  soundworks.client.init(clientType, { socketIO, appName });
  soundworks.client.setViewContentDefinitions(viewContent);
  soundworks.client.setViewTemplateDefinitions(viewTemplates);

  // configure appearance of shared parameters
  let defaultSliderSize = 'medium';
  const conductor = new soundworks.BasicSharedController({
    numPlayers: { readOnly: true },
    player0: { type: 'buttons' },
    player1: { type: 'buttons' },
    player2: { type: 'buttons' },
    player3: { type: 'buttons' },
  });

  // start client
  soundworks.client.start();
});
