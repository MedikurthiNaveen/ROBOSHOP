curl -sL https://rpm.nodesource.com/setup_lts.x | bash
echo Install NodeJS
yum install nodejs -y
useradd roboshop
cp Catalogue.service /etc/systemd/system/catalogue.service
cp MongoDB.conf /etc/yum.repos.d/mongo.repo
mkdir /app
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip
cd /app
unzip /tmp/catalogue.zip
cd /app
npm install
systemctl daemon-reload
yum install mongodb-org-shell -y
mongo --host mongodb.learndevops74.online </app/schema/catalogue.js
systemctl enable catalogue
systemctl start catalogue
