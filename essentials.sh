#!/bin/bash

#install yay for aur usage

sudo pacman -S git base-devel

git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
sudo pacman -S base-devel
makepkg -si
cd ..
sudo rm -rf ./yay-bin

#basic

yes | yay -S bash-completion flatpak jdk8-openjdk brave-bin element-desktop

#nautilus desktop button restored

dconf write /org/gnome/desktop/background/show-desktop-icons true
