#!/bin/bash
yum update 
wait
yum groupinstall "Development Tools"
wait
yum install wget
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
cd ..
wait
curl install.meteor.com | /bin/sh
wait
touch /etc/yum.repos.d/mongodb-org-3.0.repo
wait
vi /etc/yum.repos.d/mongodb-org-3.0.repo  
"[mongodb-org-3.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.0/x86_64/
gpgcheck=0
enabled=1"
wait 
yum install -y mongodb-org
echo "FINISH"

