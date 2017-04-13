#!/bin/bash

sudo yum -y 

sudo yum install -y docker unzip

sudo mkdir -p /root/.ssh/

sudo cat /vagrant_shared/id_rsa.pub >> /root/.ssh/authorized_keys

exit 0
