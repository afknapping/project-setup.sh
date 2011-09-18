#! /bin/sh


echo " "
echo "enter project name or working title"
read projectname
echo "you entered: $projectname"
mkdir ~/projects/$projectname
echo "created directory ~/projects/$projectname"
cd ~/projects/$projectname
touch _notes-$projectname.txt
echo "created _notes-$projectname.txt"
touch readme
echo "$projectname by $USER" >> readme
date >> readme
echo "created readme"
mkdir copy conception design archive doc research temp
echo "created sub directories: copy conception design  archive doc research temp"
echo " "
echo "will now create gemset and .rvmrc file"
cd deploy
rvm list
echo "which ruby version do you want to use?"
read ruby_ver
rvm use $ruby_ver
echo "using $ruby_ver"
rvm gemset create $projectname
echo "created gemset $projectname"
# read temp
rvm use ruby_ver@$projectname
# echo "using gemset $projectname?"
# rvm gemset list
# gem list
echo "installing bundler, rake"
gem install bundler rake --no-rdoc --no-ri
echo "installed bundler and rake"



cd ~/projects/$projectname
rvm --rvmrc --create $ruby_ver@$projectname
echo "created .rvmrc file in $projectname directory"


echo ""
echo "your project $projectname was set up."
echo "try:"
echo ""
echo "cd ~/projects/$projectname"
echo " "

