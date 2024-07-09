#!/bin/sh
gnome_schema="org.gnome.desktop.interface"
# gsettings set "$gnome_schema" gtk-theme "Dracula"
gsettings set "$gnome_schema" gtk-theme "Materia-dark"
gsettings set "$gnome_schema" icon-theme "Arc"
gsettings set "$gnome_schema" cursor-theme "Adwaita"
gsettings set "$gnome_schema" font-name "JetBrainsMono Nerd Font 12"
gsettings set "$gnome_schema" color-scheme "prefer-dark"
