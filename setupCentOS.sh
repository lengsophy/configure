#!/bin/bash
sudo yum update 
wait
sudo yum groupinstall "Development Tools"
wait
sudo yum install wget
wait
sudo yum install epel-release
wait
sudo yum install sudo gcc-c++
wait
wget http://nodejs.org/dist/v0.10.35/node-v0.10.35.tar.gz
wait
tar xvfz node-v0.10.35.tar.gz
wait
cd node-v0.10.35
wait
./configure
wait
make
wait
sudo make install
wait
sudo yum install npm
wait
sudo npm install -g n
wait
sudo n 0.10.40
wait
cd ..
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
