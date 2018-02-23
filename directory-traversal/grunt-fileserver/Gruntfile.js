module.exports = function (grunt) {
    grunt.initConfig({
        fileserver: {
            server1: {
                options: {
                    port: 8080,
                    hostname: '0.0.0.0',
                    cwd: '.',
                    root: '.',
                    dirAlias: {
                        'dist': 'dist'
                    },
                    keepalive: true,
                }
            }
        }
    });
    grunt.loadTasks('../../node_modules/grunt-fileserver/tasks');
};