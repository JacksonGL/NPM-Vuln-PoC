var WebSvr = require("websvr");
var webSvr = WebSvr({
    home: "./",
    listDir: true,
    debug: true,
    sessionTimeout: 60 * 1000
});
