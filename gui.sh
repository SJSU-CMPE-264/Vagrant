#! /usr/bin/env sh 
apt-get update -y 
apt-get install -y lubuntu-desktop gtkwave
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
apt-get update -y
sudo apt-get install -y sublime-text
