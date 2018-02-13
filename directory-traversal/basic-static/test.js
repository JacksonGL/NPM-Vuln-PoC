const basicStatic = require('basic-static');
const serveStatic = basicStatic({rootDir: process.cwd(), compress: true});
const http = require('http');

// Or use as the sole route handler if your server only serves static files
const server = http.createServer(function(req, res) {
        serveStatic(req, res);
});

server.listen(8888);