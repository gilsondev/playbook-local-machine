# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # config.vm.box = "bento/ubuntu-20.04"
  config.vm.box = "xtangle/pop_os-20.04"
  config.vm.guest = "ubuntu"
  config.vm.box_check_update = true
  config.vm.network "private_network", ip: "172.17.177.10"
  # config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false
  
    # Customize the amount of memory on the VM:
    vb.memory = "1024"
  end

  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y ansible
  # SHELL

  # config.vm.provision :ansible do |ansible|
  #   ansible.playbook = "playbook.yml"
  # end

end
