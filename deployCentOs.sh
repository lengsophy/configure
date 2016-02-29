pm2 kill
wait
cd
git clone https://github.com/noolab/safirv1.git
wait
cd safirv1
meteor build ..
wait
cd ..
rm -rIv safirv1
tar -zxvf safirv1.tar.gz
wait
rm -rf safirv1.tar.gz
cd bundle/programs/server/
npm install
wait
npm install bcrypt
wait
cd
cd bundle
PORT=80 MONGO_URL=mongodb://localhost:27017/meteor ROOT_URL=$1 pm2 start --name "1000" main.js


