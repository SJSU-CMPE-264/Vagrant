#! /usr/bin/env sh 
echo "Installing stuff"
apt-get install -y apt-utils git vim dirmngr gnupg gnupg-agent software-properties-common python3 autoconf gperf bison flex gcc g++ make colormake swig python-dev cmake subversion iverilog python3-pip python-pip

echo "Switching to vagrant user"
su vagrant /vagrant/init.sh
