#!/bin/bash

# Install Dependencies
sudo yum -y 
sudo yum install -y docker unzip

# Configuring and restarting Docker service
echo 'DOCKER_OPTS="--storage-driver=overlay"' >> /etc/default/docker
sudo /bin/systemctl restart docker.service

# Disable selinux
sudo setenforce Permissive
sudo echo 'SELINUX=disabled' >> /etc/sysconfig/selinux

# Copy SSH keys to nodes
if [ ! -f dcos_generate_config.sh ]; then
    echo "id_rsa.pub does not exist, copying over now."
    sudo mkdir -p /root/.ssh/
    sudo cat /vagrant_shared/id_rsa.pub >> /root/.ssh/authorized_keys
fi

exit 0
