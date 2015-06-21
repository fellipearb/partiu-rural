module.exports = function(grunt) {

    grunt.initConfig({

        uglify: {
            options: {
                mangle: false
            },

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

        watch: {
            dist: {
                files: [
                    'assets/_js/**/*',
                    'assets/_sass/**/*'
                ],

                tasks: ['uglify', 'less']
            }
        } // watch

    });


    // Plugins do Grunt
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-less');
    grunt.loadNpmTasks('grunt-contrib-watch');


    // Tarefas que serão executadas
    grunt.registerTask('default', ['uglify', 'less']);

    // Tarefa para Watch
    grunt.registerTask('w', ['watch']);

};