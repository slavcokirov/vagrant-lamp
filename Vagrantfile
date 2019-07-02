# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

# Web Server
  config.vm.define "web-server" do |vm1|
    vm1.vm.hostname = "web-server"
    vm1.vm.box = "centos/7"
    vm1.vm.network "private_network", ip: "192.168.33.10"

    vm1.vm.provider "virtualbox" do |vb|
      vb.name = "web-server"
      vb.gui = false
      vb.memory = "512"
   end
 
   vm1.vm.provision "shell", path: "bootstrap/web.sh"
  end

# DB Server
config.vm.define "db-server" do |vm2|
  vm2.vm.hostname = "db-server"
  vm2.vm.box = "centos/7"
  vm2.vm.network "private_network", ip: "192.168.33.20"

  vm2.vm.provider "virtualbox" do |vb|
    vb.name = "db-server"
    vb.gui = false
    vb.memory = "512"
 end

 vm2.vm.provision "shell", path: "bootstrap/db.sh"
end

# App Server
config.vm.define "app-server" do |vm3|
  vm3.vm.hostname = "app-server"
  vm3.vm.box = "centos/7"
  vm3.vm.network "private_network", ip: "192.168.33.30"

  vm3.vm.provider "virtualbox" do |vb|
    vb.name = "app-server"
    vb.gui = false
    vb.memory = "512"
 end

 vm3.vm.provision "shell", path: "bootstrap/app.sh"
end

end
