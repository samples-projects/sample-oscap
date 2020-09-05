#!/bin/bash

# for GUI
yum groups install "GNOME Desktop" -y
systemctl set-default graphical.target

# for japanese
timedatectl set-timezone Asia/Tokyo
localectl set-locale LANG=ja_JP.UTF-8
source /etc/locale.conf
yum -y install man-pages-ja
