# -*- mode: ruby -*-
# vi: set ft=ruby :

hostname               = "DemoInsecureServer"
server1_ip             = "192.168.22.10"

Vagrant.configure(2) do |config|

 config.vm.box = "hashicorp/precise32"
 config.vm.hostname = hostname

 config.vm.network "private_network", ip: server1_ip 
 
 config.vm.provision "shell", path: "./scripts/provisioning/apache2.sh"

end
