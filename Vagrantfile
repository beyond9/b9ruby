# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  config.omnibus.chef_version = :latest
  
  config.vm.hostname = "b9ruby-berkshelf"

  config.vm.box = "Berkshelf-CentOS-6.5.3"

  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box"

  config.vm.network :private_network, ip: "33.33.33.11"

  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.log_level = :debug
    chef.add_recipe "b9ruby::default"
  end
end
