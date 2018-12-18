# -*- mode: ruby -*-
# vi: set ft=ruby :
$setup = <<-SCRIPT
echo "Installing stuff"
apt-get update
apt-get install -y apt-utils git vim dirmngr gnupg gnupg-agent software-properties-common python3 autoconf gperf bison flex gcc g++ make colormake swig python-dev cmake subversion iverilog python3-pip python-pip --fix-missing

echo "Switching to vagrant user"
su vagrant
echo "Setting up linked folder, turning on colored prompt, setting cocotb location"
sed -i '/force_color_prompt=yes/s/^#//g' /home/vagrant/.bashrc
ln -s /vagrant/verification /home/vagrant
echo "export COCOTB=~/cocotb" >> /home/vagrant/.bashrc

echo "getting cocotb from github repo"
cd /home/vagrant
git clone https://github.com/potentialventures/cocotb.git
cd /home/vagrant/cocotb/examples/dff/tests
make 1> /dev/null
chown -R vagrant:vagrant /home/vagrant/cocotb
exit
SCRIPT

$gui = <<-SCRIPT
apt-get update -y 
apt-get install -y ubuntu-desktop gtkwave
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list
apt-get update -y
apt-get install -y sublime-text
reboot
SCRIPT

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"  
  config.vm.provider "virtualbox" do |v|
    v.name = "264-Environment"
    # v.gui = true    # Uncomment this line if you want a GUI
    v.cpus = 2
    v.memory = 2048
  end
  config.vm.provision "shell", inline: $setup
  # config.vm.provision "shell", inline: $gui # Uncomment this line if you want a GUI
end
