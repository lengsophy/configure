sudo yum install epel-release
wait
sudo yum install nodejs
wait
pm2 kill
wait
sudo cp mongodb.repo  /etc/yum.repos.d/
wait 
sudo yum install -y mongodb-org
wait
sudo semanage port -a -t mongod_port_t -p tcp 27017
wait 
sudo service mongod start
wait
cd /var/www/html/test
git clone https://djisse95:djibril95@github.com/noolab/safirv1.git
wait
cd safirv1
meteor bundle bundle.tgz
#cd ..
#sudo rm -r -f safirv1
sudo tar -zxvf bundle.tgz
#wait
#sudo rm -rf safirv1.tar.gz
sudo yum install nodejs npm
wait
npm install pm2 -g
wait
cd bundle/programs/server/
sudo npm install
wait
sudo npm install bcrypt
wait
cd ../../..
sudo chmod -R 777 bundle
sudo chown -R apache:apache bundle
cd bundle
PORT=80 MONGO_URL=mongodb://localhost:27017/meteor ROOT_URL=$1 nohup node bundle/main.js &
