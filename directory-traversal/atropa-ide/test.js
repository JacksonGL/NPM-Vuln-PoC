var ide = require('atropa-ide');
var path = require('path');
var port = 8884;
var serverRoot = path.resolve(__dirname);
ide.start(port, serverRoot);

