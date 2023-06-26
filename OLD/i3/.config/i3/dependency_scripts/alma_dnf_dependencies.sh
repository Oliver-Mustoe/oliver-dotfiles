#!/bin/sh
sudo dnf update -y
sudo dnf upgrade -y
sudo dnf config-manager --set-enabled crb
sudo dnf install epel-release -y
sudo dnf install --nogpgcheck https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-$(rpm -E %rhel).noarch.rpm -y
sudo dnf install https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-$(rpm -E %rhel).noarch.rpm -y
sudo dnf update -y
sudo dnf install i3 @base-x lightdm slick-greeter lightdm-settings nautilus chromium pulseaudio alsa-utils pavucontrol rxvt-unicode -y
sudo systemctl enable lightdm
sudo systemctl set-default graphical.target