#!/bin/bash

yes | yay -S gnome-disk-utility gwenview baobab ffmpegthumbs spectacle kclock kalk noto-fonts-emoji -y

# make dolphin default in all cases
xdg-mime default org.kde.dolphin.desktop inode/directory

# make flatpak gtk programs look consistents

flatpak install -y --noninteractive org.gtk.Gtk3theme.Breeze
sudo flatpak override --system --filesystem=xdg-config/gtk-3.0:ro --filesystem=xdg-config/gtkrc-2.0:ro --filesystem=xdg-config/gtk-4.0:ro --filesystem=xdg-config/gtkrc:ro --env "GTK_THEME=Breeze"
