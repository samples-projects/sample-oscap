# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  config.vm.box = "centos/7"
  config.vm.box_version = "2004.01"
  config.vm.box_check_update = false

  # experimental feature
  # config.vm.disk :disk, size: "10GB", primary: true

  # guest additions をインストールしたあとにマウント可能。
  # config.vm.synced_folder "share", "/share"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "oscap"
    vb.gui = true
    vb.cpus = 2
    vb.memory = 2048
  end

  config.vm.provision "shell", inline: <<-SHELL
    yum update -y
    yum upgrade -y

    # OpenSCAP
    yum install scap-workbench scap-security-guide -y
  SHELL

  config.vm.provision "shell", path: "install-vbox-guest-additions.sh"
  config.vm.provision "shell", path: "install-gui-jp.sh"
end
