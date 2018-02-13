const pages = require('html-pages')

const pagesServer = pages(__dirname, {
    port: 8888,
    'directory-index': '',
    'no-clipboard': true,
    ignore: ['node_modules']
});