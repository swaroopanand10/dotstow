#!/bin/sh
gnome_schema="org.gnome.desktop.interface"
gsettings set "$gnome_schema" gtk-theme "Dracula"
gsettings set "$gnome_schema" icon-theme "Dracula"
gsettings set "$gnome_schema" cursor-theme "Dracula-cursors"
gsettings set "$gnome_schema" font-name "JetBrainsMono Nerd Font 11"
gsettings set "$gnome_schema" color-scheme "prefer-dark"
