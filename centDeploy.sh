su meteor bundle bundle.tgz 
wait
tar -zxvf bundle.tgz
wait
cd bundle/programs/server/
npm install
wait
cd ../../..
PORT=80 MONGO_URL=mongodb://localhost:27017/meteor ROOT_URL=$1 nohup node bundle/main.js &
