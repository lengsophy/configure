#!/bin/bash
echo "KILL NODE"
pkill node
wait
echo "DELTE BUNDLE"
rm -rf bundle.tgz
wait
echo "DELTE BUNDLE FOLDER"
rm -rf bundle
wait
git pull
wait
echo "ZIPPING..."
sudo meteor bundle --debug bundle.tgz 
wait
echo "UNZIPPING"
tar -zxvf bundle.tgz
wait
cd bundle/programs/server/
echo "INSTALLING PACKAGES"
npm install
wait
cd ../../..
pwd
echo "launching node"
PORT=80 MONGO_URL=mongodb://localhost:27017/meteor ROOT_URL=$1 nohup node bundle/main.js &
