cp MongoDB.conf /etc/yum.repos.d/mongo.repo
echo Installing MonngoDb
yum install mongodb-org -y

#change the port to 0.0.0.0
echo starting MongoDB
systemctl enable mongod
systemctl start mongod
systemctl restart mongod
