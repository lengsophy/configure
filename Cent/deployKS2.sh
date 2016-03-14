sudo yum update
wait
sudo yum install epel-release
wait
sudo yum install nodejs
wait
curl https://install.meteor.com/ | sh
wait
sudo cp mongodb.repo  /etc/yum.repos.d/
wait
sudo yum install -y mongodb-org
wait
sudo semanage port -a -t mongod_port_t -p tcp 27017
wait 
sudo service mongod start
wait
git clone https://djisse95:djibril95@github.com/noolab/safirv1.git
wait
cd safirv1
wait
meteor bundle bundle.tgz
wait
sudo tar -zxvf bundle.tgz
wait
sudo yum install nodejs npm
wait
#npm install pm2 -g
wait
cd bundle/programs/server/
sudo npm install
wait
sudo npm install bcrypt
wait
cd ../../..
sudo chmod -R 777 bundle
sudo chown -R apache:apache bundle
#cd bundle
#PORT=3000 MONGO_URL=mongodb://localhost:27017/meteor ROOT_URL=http://52.201.215.6  pm2 start --name "1000" main.js
wait
cd
cd safirv1
PORT=3000 MONGO_URL=mongodb://localhost:27017/meteor ROOT_URL=$1  nohup node bundle/main.js &

