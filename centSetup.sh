#!/bin/bash
yum update 
wait
yum groupinstall "Development Tools"
wait
yum install wget
wait
yum install sudo gcc-c++
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
sudo npm cache clean -f
wait
sudo npm install -g n
wait
sudo n stable
wait
sudo n 0.8.21
wait
cd ..
wait
curl install.meteor.com | /bin/sh
wait
sudo npm install pm2 -g
wait
sudo cp mongodb-org-3.0.repo etc/yum.repos.d/
wait 
yum install -y mongodb-org
echo "FINISH"

