# -*- mode: ruby -*-
# vi: set ft=ruby :

hostname               = "DemoInsecureServer"
node1_ip             = "192.168.22.11"
node2_ip             = "192.168.22.12"
node3_ip             = "192.168.22.13"

Vagrant.configure(2) do |config|

 config.vm.box = "hashicorp/precise32"
 config.vm.hostname = hostname

 #Set a static private IP
 #config.vm.network "private_network", ip: server1_ip 
 config.vm.synced_folder "./", "/var/www", create: true, group: "www-data", owner: "www-data"

 config.vm.define "node1" do |node1|
    node1.vm.network "private_network", ip:node1_ip 
    node1.vm.provision "shell", path: "./scripts/provisioning/apache2.sh"
 end

 config.vm.define "node2" do |node2|
    node2.vm.network "private_network", ip:node2_ip 
    node2.vm.provision "shell", path: "./scripts/provisioning/php.sh"
    node2.vm.provision "shell", path: "./scripts/provisioning/nginx.sh"
 end

 config.vm.define "node3" do |node3|
    node3.vm.network "private_network", ip:node3_ip 
    node3.vm.provision "shell", path: "./scripts/provisioning/python.sh"
    node3.vm.provision "shell", path: "./scripts/provisioning/mysql.sh", args: ["root", "1.2", "true"]
 end
 # Install Apache2 
 # config.vm.provision "shell", path: "./scripts/provisioning/apache2.sh"

 # Install Php 
 # config.vm.provision "shell", path: "./scripts/provisioning/php.sh"

 # Install nginx
 # config.vm.provision "shell", path: "./scripts/provisioning/nginx.sh"
 
 # Install mysql 
 # config.vm.provision "shell", path: "./scripts/provisioning/mysql.sh", args: ["root", "2.3", "true"]

 # Install MariaDB
 # config.vm.provision "shell", path: "./scripts/provisioning/maria.sh", args: ["root", "true"] 
end
