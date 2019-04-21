#!/bin/bash

sudo pacman -Syu

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
sudo pacman -S telegram-desktop
sudo pacman -S firefox cmake rofi polybar


