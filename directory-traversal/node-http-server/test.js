var pkg = require('node-http-server');
pkg.deploy({
    port: 8080,
    root: __dirname,
});
