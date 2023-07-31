curl -sL https://rpm.nodesource.com/setup_lts.x | bash
yum install nodejs -y

cp user.service /etc/systemd/system/user.service
cp MongoDB.conf /etc/yum.repos.d/mongo.repo

useradd roboshop
mkdir /app
curl -L -o /tmp/user.zip https://roboshop-artifacts.s3.amazonaws.com/user.zip
cd /app
unzip /tmp/user.zip
cd /app
npm install
systemctl daemon-reload
yum install mongodb-org-shell -y
mongo --host mongodb.learndevops74.online </app/schema/user.js

systemctl enable user
systemctl start user
