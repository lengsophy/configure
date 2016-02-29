pm2 kill
wait
cd
sudo git clone https://github.com/noolab/safirv1.git
wait
sudo chmod -R 777 safirv1/
wait
cd safirv1
meteor build ..
wait
cd ..
sudo rm -rIv safirv1
sudo tar -zxvf safirv1.tar.gz
wait
sudo rm -rf safirv1.tar.gz
cd bundle/programs/server/
sudo npm install
wait
sudo npm install bcrypt
wait
cd
cd bundle
PORT=80 MONGO_URL=mongodb://localhost:27017/meteor ROOT_URL=$1 pm2 start --name "1000" main.js


