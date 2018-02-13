const createServer = require('pico-static-server');

const staticServer = createServer({
    defaultFile: 'index.html', // not required, defaults to 'index.html'
    staticPath: '.', // not required, defaults to './'
    port: 8880, // not required, defaults to 8080
});