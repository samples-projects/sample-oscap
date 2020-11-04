# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "kannkyo/centos"
  config.vm.box_version = "8.2.2004"
  # config.vm.box = "centos/8"
  # config.vm.box_version = "1905.1"
  config.vm.box_check_update = false

  # vbguest plugin
  # https://github.com/dotless-de/vagrant-vbguest/blob/main/CHANGELOG.md#0240beta1-2020-04-28
  config.vbguest.installer_options = { allow_kernel_upgrade: true }

  # VAGRANT_EXPERIMENTAL="disks"
  # config.vm.disk :disk, size: "16GB", primary: true

  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "share/", "/mnt/host"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.cpus = 1
    vb.memory = 1024
  end

  config.vm.define "offline" do |define|
    define.vm.provider "virtualbox" do |vb|
      vb.name = "oscap-offline"
    end
    define.vm.provision "shell", inline: <<-SHELL
      cd /mnt/host/offline-install
      ./install-oscap.sh
    SHELL
  end

  config.vm.define "online" do |define|
    define.vm.provider "virtualbox" do |vb|
      vb.name = "oscap-online"
    end
    define.vm.provision "shell", inline: <<-SHELL
      sudo yum update -y
      sudo yum install scap-workbench scap-security-guide -y
    SHELL
    # define.vm.provision "shell", path: "install-gui-jp.sh"
  end
end
