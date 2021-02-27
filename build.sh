#! bin/bash


git clone https://github.com/hzhoanglee/Unity-NoVNC-for-Heroku.git
cd Unity-NoVNC-for-Heroku
echo What is your application name?
echo Please enter correctly, if not, Stop this script and run it again
read appname
echo If your application name is correct, you can access https://$appname.herokuapp.com when this complete
echo Logging in to Container
heroku create $appname
heroku container:login
echo Deploying image
heroku container:push web --app $appname
echo Releasing app.
heroku container:release web --app $appname
echo Everything is set. Go to: https://$appname.herokuapp.com


done
