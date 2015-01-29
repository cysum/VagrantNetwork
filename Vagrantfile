# -*- mode: ruby -*-
# vi: set ft=ruby :

hostname               = "DemoInsecureServer"
server1_ip             = "192.168.22.11"

Vagrant.configure(2) do |config|

 config.vm.box = "hashicorp/precise32"
 config.vm.hostname = hostname

 #Set a static private IP
 config.vm.network "private_network", ip: server1_ip 
 config.vm.synced_folder "./", "/var/www", create: true, group: "www-data", owner: "www-data"

 # Install Apache2 
 # config.vm.provision "shell", path: "./scripts/provisioning/apache2.sh"

 # Install Php 
 # config.vm.provision "shell", path: "./scripts/provisioning/php.sh"

 # Install nginx
 # config.vm.provision "shell", path: "./scripts/provisioning/nginx.sh"
 
 # Install mysql 
 # config.vm.provision "shell", path: "./scripts/provisioning/mysql.sh"
   config.vm.provision "shell", path: "./scripts/provisioning/mysql.sh", args: ["root", "2.3", "true"]

 # Install MariaDB
   config.vm.provision "shell", path: "./scripts/provisioning/maria.sh", args: ["root", "true"] 
end
