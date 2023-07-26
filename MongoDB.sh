cp MongoDB.conf /etc/yum.repos.d/mongo.repo
echo Installing MonngoDb
yum install mongodb-org -y
echo starting MongoDB
systemctl enable mongod
systemctl start mongod
