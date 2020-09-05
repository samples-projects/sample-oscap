#!/bin/bash

VBOX_VERSION=6.1.12

yum install wget -y
wget http://download.virtualbox.org/virtualbox/${VBOX_VERSION}/VBoxGuestAdditions_${VBOX_VERSION}.iso
mkdir /media/VBoxGuestAdditions
mount -o loop,ro VBoxGuestAdditions_${VBOX_VERSION}.iso /media/VBoxGuestAdditions
sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
rm VBoxGuestAdditions_${VBOX_VERSION}.iso
umount /media/VBoxGuestAdditions
rmdir /media/VBoxGuestAdditions
