echo installing nginx
yum install nginx -y

systemctl enable nginx
systemctl start nginx

cp NginxFrontEnd.conf /etc/nginx/default.d/roboshop.conf
echo Clearing Conetent
rm -rf /usr/share/nginx/html/*
Echo Downloading HTML Content
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip


