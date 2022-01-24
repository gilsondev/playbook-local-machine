# Playbook Local Machine

![Screenshot](./screenshot.gif)

This project have a playbook and many roles that provision my workflow, focused to my laptop XPS 13 9310, including the kernel and libs OEM.

Systems supported:

- Ubuntu 20.04
- PopOS 20.04

System that will be included:

- PopOS 22.04

## Install

```bash
wget -q -O - "https://raw.githubusercontent.com/gilsondev/playbook-local-machine/main/install.sh" | bash
```

## Develop the Playbook

1. Clone this project

```bash
git clone git@github.com:gilsondev/playbook-local-machine.git
```

2. Prepare a virtual environment and install the dependencies

```bash
cd playbook-local-machine
make setup
```
