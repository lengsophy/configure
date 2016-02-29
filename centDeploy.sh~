meteor build ..
cd ..
sudo rm -rIv safirv1
wait
sudo tar -zxvf safirv1.tar.gz
wait
sudo rm safirv1.tar.gz
wait
cd bundle/programs/server/
wait
sudo rm -RrIv node_modules/fibers/
wait
npm install
wait
npm install bcrypt
wait
cd /home/centos/bundle
wait
PORT=80 MONGO_URL=mongodb://localhost:27017/meteor ROOT_URL="http://54.84.245.176" pm2 start --name "1000" main.js


