VENV = $(PWD)/.venv
PYTHON = $(VENV)/bin/python
PIP = $(VENV)/bin/pip
ANSIBLE = $(VENV)/bin/ansible
ANSIBLE_PLAYBOOK = $(VENV)/bin/ansible-playbook
ANSIBLE_GALAXY = $(VENV)/bin/ansible-galaxy

.PHONY: init
init:
	@python3 -m venv $(VENV)

.PHONY: install
install:
	@$(PIP) install -r requirements.txt
	@$(ANSIBLE_GALAXY) install -r requirements.yml
	@sudo apt-get install -y sshpass

.PHONY: setup
setup: init install

.PHONY: clean
clean:
	@rm -rf __pycache__
	@rm -rf $(VENV)

.PHONY: vagrant-up
vagrant-setup:
	@vagrant up

.PHONY: vagrant-clean
vagrant-clean:
	@vagrant destroy -f
	@rm -rf .vagrant

.PHONY: vagrant-setup
vagrant-setup: vagrant-clean vagrant-up

.PHONY: provision-test
provision-test:
	@ansible-playbook playbook.yml -i hosts --limit "vagrant"

.PHONY: provision
provision:
	@ansible-playbook playbook.yml -i hosts --limit "local" -K
