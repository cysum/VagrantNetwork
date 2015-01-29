!# /bin/bash

apt-get update

echo "Installing Nginx"
apt-get install nginx -y > /dev/null

echo "Configuring Nginx"
cp /var/www/scripts/provisioning/config/nginx_vhost /etc/nginx/sites-available/nginx_vhost > /dev/null
 
ln -s /etc/nginx/sites-available/nginx_vhost /etc/nginx/sites-enabled/
 
rm -rf /etc/nginx/sites-available/default
 
service nginx restart > /dev/null

