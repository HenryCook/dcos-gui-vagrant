#!/bin/bash

sudo apt update

sudo apt install -y docker docker.io ipset unzip selinux-utils

sudo ln /bin/ln /usr/bin/ln
sudo ln /bin/rm /usr/bin/rm
sudo ln /bin/mkdir /usr/bin/mkdir
sudo ln /bin/tar /usr/bin/tar
sudo ln /usr/sbin/useradd /usr/bin/useradd

sudo cat /vagrant_shared/id_rsa.pub >> /home/ubuntu/.ssh/authorized_keys

exit 0
