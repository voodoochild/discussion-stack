# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise32"
  config.vm.provision :shell, :path => "provision.sh"
  config.vm.network :forwarded_port, host: 1337, guest: 1337
  config.vm.network :forwarded_port, host: 8900, guest: 8900
end
