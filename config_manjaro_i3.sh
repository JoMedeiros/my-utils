#!/bin/bash

sudo pacman -Sy
# Installing browser, cmake to use with spotify, etc
sudo pacman -S firefox cmake telegram-desktop
# polybar dependencies
sudo pacman -S cairo libxcb xcb-proto xcb-util-image xcb-util-wm
# polybar optional dependencies
sudo pacman -S xcb-util-cursor xcb-util-xrm
# .. for extended module support
sudo pacman -S alsa-lib libpulse jsoncpp libmpdclient curl wireless_tools

cd $HOME
mkdir Codes
cd Codes

git clone https://aur.archlinux.org/spotify.git
cd spotify

sudo pacman -S libcurl-gnutls
gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
makepkg -sri

# Enable internet time sync
timedatectl set-ntp true

# Installing telegram, firefox
sudo pacman -S firefox cmake rofi polybar


