#!/bin/bash

sudo curl -O https://downloads.dcos.io/dcos/stable/dcos_generate_config.sh

sudo bash dcos_generate_config.sh --web -v

exit 0
