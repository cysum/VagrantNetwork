#! /bin/bash
apt-get install -y apache2
cp /vagrant/scripts/provision/conf/my-site.conf /etc/apache2/sites-available/
ln -s /etc/apache2/sites-available /etc/apache2/sites-enabled
service restart apache2
