var p = process.argv[2]
var fs = require('fs');
var path = require('path');
var content = fs.readFileSync(path.join(__dirname, 'config-template.js'), 'utf-8');
content = content.replace('DIR_VAL', p + '/');
console.log(content);