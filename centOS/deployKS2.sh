git clone https://djisse95:djibril95@github.com/noolab/safirv1.git
wait
cd safirv1
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
wait
sudo chown -R apache:apache bundle
wait
sudo rm -r -f bundle.tgz
wait
MONGO_URL=mongodb://localhost:27017/meteor PORT=80 ROOT_URL=$1 nohup node bundle/main.js &
