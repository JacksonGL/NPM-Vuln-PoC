//Import libs
var stattic = require('stattic');

//Set the folder with the static files
stattic.set('folder', '.');

//Set the port
stattic.set('port', 8881);

//Run the server
stattic.listen();