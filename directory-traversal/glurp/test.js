var pkg = require('glurp');
pkg.set('GET', '/', function(req, res) {
	res.sendFile('/index.html'); 
});
pkg.start(8876, __dirname);
