var http = require('nodeload/lib/http');
var server = new http.HttpServer().start(10000);
server.addRoute('^/hello$', function(url, req, res) {
    res.writeHead(200);
    res.end("Hello");
});