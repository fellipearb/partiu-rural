module.exports = function(grunt) {

    grunt.initConfig({

        uglify: {
            my_target: {
                files: {
                    'assets/js/main.js': ['assets/_js/main.js']
                }
            }
        }, // uglify

        less: {
            development: {
                options: {
                    paths: ["assets/css"]
                },
                files: {
                    "assets/css/style.css": "assets/_less/style.less"
                }
            }
        }, // less

        'ftp-deploy': {
            build: {
                auth: {
                    host: 'ftp.dwinfotec.com.br',
                    port: 21,
                    authKey: 'key1'
                },
                src: './',
                dest: 'partiu',
                exclusions: ['./.*', './**/bin', './docs', './assets/_js', './assets/_less', './node_modules*', './**/.DS_Store', './**/Thumbs.db', './**/tmp']
            }
        }, // ftp

        watch: {
            css: {
                files: 'assets/_less/**/*',
                tasks: ['less', 'ftp-deploy'],
            },
            scripts : {
                files : 'assets/_js/**/*',                
                tasks : ['uglify', 'ftp-deploy'],
                options: {
                    livereload: true,
                },
            },
            configFiles: {
                files: 'Gruntfile.js',
                options: {
                    reload: true
                }
            }
        } // watch

    });


    // Plugins do Grunt
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-less');
    grunt.loadNpmTasks('grunt-ftp-deploy');
    grunt.loadNpmTasks('grunt-contrib-watch');


    // Tarefas que serão executadas
    grunt.registerTask('default', ['uglify', 'less']);

    // Tarefa para Watch
    grunt.registerTask('w', ['watch']);
    grunt.registerTask('f', ['ftp-deploy']);
};