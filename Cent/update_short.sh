sudo killall node
wait
git pull
wait
sudo rm bundle bundle.tgz -rf
wait
meteor bundle bundle.tgz
wait
sudo tar -zxvf bundle.tgz
wait
sudo yum install nodejs npm
wait
cd bundle/programs/server/
sudo npm install
wait
sudo npm install bcrypt
wait
cd ../../..
sudo chmod -R 777 bundle
sudo chown -R apache:apache bundle
MONGO_URL=mongodb://localhost:27017/meteor PORT=3000 ROOT_URL=$1 nohup node bundle/main.js &
