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

