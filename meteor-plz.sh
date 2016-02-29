#!/bin/bash

# https://gist.github.com/hellstad

# This is a script I use to automate deploying my meteor app from my git repository to my server running:
# CentOS 6 x86_64
# nginx 1.4.7
# node 0.10.33
# forever 0.13.0
# npm 1.4.28
# mongod 2.6.7
# meteor 1.0.2.1

# Usage:
# > chmod a+x meteor-plz.sh
# > ./meteor-plz.sh

# Run this from your SERVER's /home/username directory where you want to run your meteor app from.
# The script will prompt before deleting directories but USE AT OWN RISK AND DOUBLE CHECK THE CODE FOR YOUR SETUP!
# Errors? Check chown / chmod.

# <----- BEGIN CONFIG ----->
# git repository address / folder
GIT_REPO=https://github.com/noolab/safirv1.git
GIT_FOLDERNAME=safirv1

# node environment variables
# Please replace the values below with your mongodb USERNAME, PASSWORD, DBNAME,
# PORTNUMBER, and UID (for forever.js)
NODE_MONGO_URL=mongodb://localhost:27017/meteor
NODE_PORT=80
NODE_ROOT_URL=http://54.84.245.176/
NODE_UID="UID"
NODE_USER=centos

# <----- BEGIN SCRIPT ----->
# clone source to server + configure
pm2 kill
wait
cd /home/$NODE_USER
wait
rm -rIv $GIT_FOLDERNAME
wait
git clone $GIT_REPO
wait
cd $GIT_FOLDERNAME
meteor bundle bundle.tgz 
wait
sudo tar -zxvf bundle.tgz
wait
cd bundle/programs/server/
wait
rm -RrIv node_modules/fibers/
wait
npm install
wait
npm install bcrypt
wait

# start meteor app with pm2
cd /home/$NODE_USER/bundle
MONGO_URL=$NODE_MONGO_URL PORT=$NODE_PORT ROOT_URL=$NODE_ROOT_URL pm2 start --name $NODE_UID main.js
