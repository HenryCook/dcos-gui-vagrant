#!/bin/bash
cd "$(dirname "$0")"

ssh-keygen -t rsa -N "" -f id_rsa

mv id_rsa.pub ../shared

mv id_rsa ../files 

exit 0
