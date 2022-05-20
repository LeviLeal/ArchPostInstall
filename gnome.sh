#!/bin/bash

yes | sudo pacman -S nemo gnome-tweaks pavucontrol gnome-software-packagekit-plugin rhythmbox -y

#nemo como gerenciador de arquivos padrão

xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search

gsettings set org.gnome.desktop.background show-desktop-icons false

gsettings set org.nemo.desktop show-desktop-icons true
