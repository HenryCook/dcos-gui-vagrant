# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.synced_folder "shared", "/vagrant_shared", type: "rsync"
  config.vm.provision :shell, path: "scripts/bootstrap.sh"

  config.vm.define "master" do |master|
    master.vm.host_name = "master.dcos.com"
    master.vm.network "forwarded_port", guest: 80, host: 8080    
    master.vm.network :private_network, ip: "192.168.1.10"
  end

  config.vm.define "agent" do |agent|
    agent.vm.host_name = "agent.dcos.com"
    agent.vm.network :private_network, ip: "192.168.1.11"
  end

  config.vm.define "bootstrap" do |bootstrap|
    bootstrap.vm.host_name = "bootstrap.dcos.com"
    bootstrap.vm.network "forwarded_port", guest: 9000, host: 9090
    bootstrap.vm.network :private_network, ip: "192.168.1.12"
    bootstrap.vm.provision :shell, path: "scripts/bootstrap_node.sh"
  end

end
