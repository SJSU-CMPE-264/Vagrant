echo "Setting up linked folder, turning on colored prompt, setting cocotb location"
sed -i '/force_color_prompt=yes/s/^#//g' /home/vagrant/.bashrc
ln -s /vagrant/verification /home/vagrant
echo "export COCOTB=~/cocotb" >> /home/vagrant/.bashrc

echo "getting cocotb from github repo"
cd /home/vagrant
git clone https://github.com/potentialventures/cocotb.git
cd /home/vagrant/cocotb/examples/dff/tests
make 1> /dev/null
exit
