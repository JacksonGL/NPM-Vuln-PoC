var express = require("express");
var app = express();
var pkg = require("express-blinker");
var path = require("path");
 
app.use(pkg(__dirname, [
    {
        test: /.*/,
        etag: true,
        lastModified: false,
        cacheControl: true,
        expires: false,
        age: 600
    }
]));
 
app.listen(8888);