curl https://cli-assets.heroku.com/install.sh | sh
wget https://download1857.mediafire.com/hmfb36ytwpqg/b1jofkcfonp8ocq/heroku+novnc+full.zip
unzip heroku+novnc+full.zip && cd docker-novnc-master
heroku login -i
heroku container:login
