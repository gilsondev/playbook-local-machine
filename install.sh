#!/usr/bin/env sh

# Install needed packages
if [ -f /etc/debian_version ]; then
    sudo apt update && sudo apt install -y git make sshpass python3-venv python3-pip build-essential python3-dev
fi

# Clone the project
git clone https://github.com/gilsondev/playbook-local-machine.git

# Prepare the environment
cd playbook-local-machine
make setup

# Run the playbook
make provision

if [ $? -eq 0 ]; then
    # Reboot the machine
    echo "Restarting in 5 seconds..."
    sleep 5 && sudo systemctl reboot
else
    echo "We have some error when execute the playbook. Tray again!"
fi
