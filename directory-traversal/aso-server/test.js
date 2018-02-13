var pkg = require('aso-server')
let server = pkg
     .onError(e => console.log(e))
     .onStop(() => {})
     .start('localhost', 8883, srv => {});