# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  config.omnibus.chef_version = :latest
  
  config.vm.hostname = "172.17.8.140"
  
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "b9centos"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "https://github.com/beyond9/b9centos/releases/download/v7.0.0/centos7-20141106.box"

  config.vm.network :private_network, ip: "172.17.8.140"

  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.log_level = :debug
    chef.add_recipe "b9ruby::default"
  end
end
