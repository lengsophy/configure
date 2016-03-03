#!/bin/bash
sudo yum update 
wait
sudo yum groupinstall "Development Tools"
wait
sudo yum install wget
wait
sudo yum install epel-release
wait
sudo yum install gcc-c++
wait
sudo yum install nodejs npm
wait
sudo yum install npm
wait
sudo npm install pm2 -g
wait
curl install.meteor.com | /bin/sh
wait
sudo cp mongodb-org-3.0.repo /etc/yum.repos.d/
wait 
sudo yum install -y mongodb-org
wait
sudo semanage port -a -t mongod_port_t -p tcp 27017
wait 
sudo service mongod start
echo "finish"
