#!/bin/bash

# Install the latest version of VirtualBox
curl -L http://download.virtualbox.org/virtualbox/5.0.20/virtualbox-5.0_5.0.20-106931~Ubuntu~trusty_amd64.deb > virtualbox.deb
dpkg --force-confnew -i virtualbox.deb

echo "Setup vboxdrv::::::::::::::::::"
apt-get update
apt-get install build-essential linux-headers-`uname -r` dkms
/etc/init.d/vboxdrv setup
echo "cat:::::::::::::::::"
cat /var/log/vbox-install.log
echo "--version:::::::::::::::::::"
VBoxManage --version

# Install the latest version of Vagrant
curl -L https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.deb > vagrant.deb
dpkg --force-confnew -i vagrant.deb