#!/bin/sh
      sudo yum  update -y
      sudo yum  install  httpd -y
      sudo chmod -R 777 /var/www/html
      cd /var/www/html
      sudo wget https://raw.githubusercontent.com/chandradeoarya/dojo-jump/master/style.css
      sudo wget https://raw.githubusercontent.com/chandradeoarya/dojo-jump/master/main.js
      sudo wget https://raw.githubusercontent.com/chandradeoarya/dojo-jump/master/index.html
      sudo systemctl start httpd
      sudo systemctl enable httpd
