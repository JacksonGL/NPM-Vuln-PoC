var meryl = require('meryl');
require('http').createServer(
	meryl
	.get('/', function (req, resp) {
		resp.end("<h1>Demonstraing Meryl</h1>");
	})
	.cgi()
).listen(3000);