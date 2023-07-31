echo installing nginx
yum install nginx -y
systemctl enable nginx 
systemctl start nginx 
cp NginxFrontend.conf /etc/nginx/default.d/roboshop.conf
echo Clearing Conetent
rm -rf /usr/share/nginx/html/*
echo Downloading HTML Content
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip
cd /usr/share/nginx/html
unzip /tmp/frontend.zip
systemctl enable nginx

echo restaring
systemctl restart nginx



