#! /bin/sh


# IMPORTANT: Source RVM as a function into local environment.
#            Otherwise switching gemsets won't work.
[ -s "$HOME/.rvm/scripts/rvm" ] && . "$HOME/.rvm/scripts/rvm"

# see http://stackoverflow.com/questions/5792707/cannot-change-rvm-gemset-from-shell-script-via-rvm-gemset-use/6584010#6584010

clear
echo " "
echo -n "enter project name or working title: "
read projectname
mkdir ~/projects/$projectname
echo "created directory ~/projects/$projectname"
cd ~/projects/$projectname
touch notes-$projectname.txt
echo "created notes-$projectname.txt"
touch readme.txt
echo "$projectname by $USER" >> readme
date >> readme
echo "created readme.txt"
mkdir copy conception design archive doc rawmaterial research temp
echo "created sub directories: copy conception design  archive doc research temp rawmaterial"
echo " "
rvm list
echo "which ruby?"
read ruby_ver
rvm use $ruby_ver
# echo "using $ruby_ver"
rvm gemset create $projectname
rvm use ruby_ver@$projectname
echo "installing bundler, rake, heroku"
gem install bundler rake heroku --no-rdoc --no-ri
heroku keys:add
echo " "
# rvm gemset list   # for debugging
# gem list 			# for debugging
echo " "

cd ~/projects/$projectname
rvm --rvmrc --create $ruby_ver@$projectname
echo " " >> .rvmrc
echo "rvm list" >> .rvmrc
echo "rvm gemset list" >> .rvmrc
echo "created .rvmrc file in $projectname directory"
echo ""

echo "your project $projectname is set up."
echo "try:"
echo ""
echo "cd ~/projects/$projectname"
echo " "

