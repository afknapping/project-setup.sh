
# what does it do?

* asks for a name or working title for the project
* sets up folderstructure in ~/projects/my-shiny-new-project as specified in config
* creates gemset
* installs gems specified in config
* adds public key to heroku
* writes .rvmrc, notes and readme files in the projects base directory.

the idea is to have *some* rvm-enviroment, whatever happens, and over time, build a solid custom template (currently trying out sinatra).

# thanks

[dadooda][1], [titusd][2], [user759537][3]

[1]: http://stackoverflow.com/questions/5792707/cannot-change-rvm-gemset-from-shell-script-via-rvm-gemset-use/6584010#6584010
[2]: http://titusd.co.uk/2010/04/07/a-beginners-sinatra-tutorial/
[3]: http://stackoverflow.com/questions/3865515/strange-inability-to-require-config-boot-after-upgrading-to-ruby-1-9-2/6047615#6047615