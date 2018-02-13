'use strict';
const Hserver = require('hserver');
const Hstatic = require('hserver-static');

const port = 8887;
const app = new Hserver();

// logger
app.use(function (next) {
    const start = new Date;
    this.res.once('finish', () => {
        const ms = new Date - start;
        console.log('%s %s %s - time:%s', this.status, this.method, this.url, ms);
    });
    next();
});
// static middleware
app.use(Hstatic({
    router: '/',
    root: 'www',
    index: 'index.html',
    method: ['GET', 'HEAD'],
    zip: true,
    cache: 7200,
    etag: true
}));
app.listen(port);
console.log(`Server is running at http://127.0.0.1:${port}/`);