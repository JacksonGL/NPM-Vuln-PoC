var cling = require('static-cling').cling;
//defaults
var config = {
    root: '.',
    port: 7000,
    filename: 'index.html'
}
//overriding defaults
cling(config);