echo installing nginx
yum install nginx -y

cp NginxFrontend.conf /etc/nginx/default.d/roboshop.conf
echo Clearing Conetent
rm -rf /usr/share/nginx/html/*
echo Downloading HTML Content
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip
systemctl enable nginx

echo restaring
systemctl restart nginx /var/log/messages



