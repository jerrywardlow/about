#!/usr/bin/env bash

apt-get update -qqy
apt-get install -qqy git
apt-get install -qqy build-essential
curl -sL https://deb.nodesource.com/setup_6.x | bash
apt-get install -qqy nodejs

npm install -g bower
npm install -g pm2

cd /bulochnik.com
npm install
pm2 start server.js
echo "PM2 is now running server.js on 172.69.69.69:3000" > /etc/motd
