var Router = require('node-simple-router');
var router = new Router({
      static_route: process.cwd(),
      cgi_dir: 'cgi-bin',
      use_nsr_session: false,
      default_home: []
});
var http = require('http');
var server = http.createServer(router);
server.listen(8000);
