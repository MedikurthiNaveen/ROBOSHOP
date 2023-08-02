cp Cart.service etc/systemd/system/cart.service


curl -sL https://rpm.nodesource.com/setup_lts.x | bash

yum install nodejs -y

useradd roboshop

mkdir /app
curl -L -o /tmp/cart.zip https://roboshop-artifacts.s3.amazonaws.com/cart.zip

cd /app
unzip /tmp/cart.zip
cd /app
npm install
echo cart service created and reloading
systemctl daemon-reload
systemctl enable Cart
systemctl start Cart