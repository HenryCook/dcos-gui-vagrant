#!/bin/bash

# Install Dependencies
sudo yum -y 
sudo yum install -y docker unzip


for i in {0..6}
do
    mknod -m0660 /dev/loop$i b 7 $i
done

sudo /bin/systemctl start docker.service

# Disable selinux
sudo setenforce Permissive
sudo echo 'SELINUX=disabled' >> /etc/sysconfig/selinux

# Copy SSH keys to nodes
sudo mkdir -p /root/.ssh/
sudo cat /vagrant_shared/id_rsa.pub >> /root/.ssh/authorized_keys

exit 0
