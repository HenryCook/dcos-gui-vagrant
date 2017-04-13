# dcos-gui-vagrant
DCOS GUI Vagrant Project

## Background
After having a play with DCOS bootstrapping via GUI and CLI, I thought it would be nice to dump my work for others to peruse. It's not particularly clever but it works. Don't judge.

## Getting set up

### SSH Keys
For the ssh key I have created a script in the `scripts` directory named `generate_ssh_keys.sh`. This will place `id_rsa.pub` in in the `shared` directory and the private key `id_rsa` in the `files` directory.

`bash scripts/generate_ssh_keys.sh`

The private Key will then be required for the set up via the GUI which will be found here [localhost:9090](http://localhost:9090)

Once set up the Master can be found here [localhost:8080](http://localhost:8080)

### Deployment Settings

#### Nodes
- **Master:** 192.168.1.10
- **Agent:** 192.168.10.11
- **Bootstrap:** 192.168.1.12
- **Master Public** http://192.168.1.10/

#### SSH
- **User:** ubuntu
- **Port:** 22

#### SSH Key
- Generated via `generate_ssh_keys.sh` before doing `vagrant up` and then use the private key that's been created in the `files` directory

#### IP Detect Script

- This can be found in the `files` directory named `ip-detect`

## Running

First generate the ssh keys:

`bash scripts/generate_ssh_keys.sh`

Then run Vagrant:

`vagrant up`