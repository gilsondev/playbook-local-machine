#!/usr/bin/env sh

# Install needed packages
if [ -f /etc/debian_version ]; then
    sudo apt-get install -y git make sshpass python3-venv
fi

# Clone the project
git clone https://github.com/gilsondev/playbook-local-machine.git

# Prepare the environment
cd playbook-local-machine
make setup

# Run the playbook
make provision
