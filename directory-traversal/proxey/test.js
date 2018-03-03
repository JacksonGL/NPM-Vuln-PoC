var pkg = require('proxey');
pkg.run({
    rootFolder: './',
    port: 5000,
    proxyUrl: '/proxy',
    vars: {
        'X-Api-Token': '12345'
    },
    routes: {
        '/': 'home.html',
        '/users': 'users.html',
        '/api/users': 'users.json'
    },
    charset: 'utf-8'
});