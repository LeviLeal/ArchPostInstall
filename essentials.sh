#!/bin/bash

#yay para usar o AUR facilmente

sudo pacman -S git base-devel

git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd ..
sudo rm -rf ./yay-bin

#basico

yes | yay -S bash-completion flatpak unrar

#botão de deskto do nautilus restaurado

dconf write /org/gnome/desktop/background/show-desktop-icons true