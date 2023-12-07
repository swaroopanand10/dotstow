#!/bin/bash
# ------------------------------------------------------
# Check if paru is installed
# ------------------------------------------------------
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

sudo pacman --noconfirm -S rustup
rustup default stable # or just install rust package

source ./functions.sh
if sudo pacman -Qs paru > /dev/null ; then
    echo "paru is already installed!"
else
    echo "paru is not installed. Will be installed now!"
    _installPackagesPacman "base-devel"
    _installPackagesPacman "git"
    SCRIPT=$(realpath "$0")
    temp_path=$(dirname "$SCRIPT")
    echo $temp_path
    git clone https://aur.archlinux.org/paru.git ~/paru
    cd ~/paru
    makepkg -si
    cd $temp_path
    echo "paru has been installed successfully."
fi
echo ""
