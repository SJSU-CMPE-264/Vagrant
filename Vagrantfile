# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"  
  config.vm.provider "virtualbox" do |v|
    v.name = "264-Environment"
    v.gui = true    # Uncomment this line if you want a GUI
    v.cpus = 2
    v.memory = 2048
  end
  config.vm.provision "shell", path: "update.sh"
  
  config.vm.provision "shell", inline: "apt-get install y lubuntu-desktop" # Uncomment this line to install a GUI
end
