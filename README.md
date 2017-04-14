# DC/OS GUI Vagrant
DC/OS GUI Vagrant Project

## Background
After having a play with DCOS bootstrapping via GUI and CLI, I thought it would be nice to dump my work for others to peruse. It's not particularly clever but it works. Don't judge.

## Getting set up

### SSH Keys
For the ssh key I have created a script in the `scripts` directory named `generate_ssh_keys.sh`. This will place `id_rsa.pub` in in the `shared` directory and the private key `id_rsa` in the `files` directory.

`bash scripts/generate_ssh_keys.sh`

### Deployment Settings

#### Nodes
- **Master:** 10.1.1.10
- **Agent:** 10.1.1.11
- **Bootstrap:** 10.1.1.12
- **Master Public** http://10.1.1.10/

#### SSH
- **User:** root (I know this isn't very security minded however this is for **local** testing only)
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

Navigate to the DC/OS installer (link below):

[localhost:9090](http://localhost:9090)

Once you've succesfully installed DC/OS, you'll be redirected to the GUI:

[10.1.1.10](http://10.1.1.10/)
