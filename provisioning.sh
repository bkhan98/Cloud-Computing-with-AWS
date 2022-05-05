#!/bin/bash
# tells the system its a bash script 

sudo apt-get update -y
# runs update

sudo apt-get upgrade -y
# runs upgrade

sudo apt-get install nginx -y
# install nginx (used as a webserver)

sudo systemctl start nginx
# starts the process of nginx

sudo systemctl enable nginx
# enables the nginx

cd app/app
# this changes the directory to app folder where we to install packages

sudo apt-get install python-software-properties -y
# it installs the python app software properties without any prompts

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
# this downloads the nodejs package  with version 6

sudo apt-get install -y nodejs

sudo apt-get update -y

npm install

rm -rf /etcnginx/sites-available/default

npm start &
# the & makes the command run in the background