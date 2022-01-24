#!/bin/bash

# Install needed packages
if [ -f /etc/debian_version ]; then
    sudo apt-get install -y git make ansible sshpass
fi

# Clone the project
git clone https://github.com/gilsondev/playbook-local-machine.git

# Prepare the environment
cd playbook-local-machine
ansible-galaxy install -r requirements.yml

# Run the playbook
make provision
