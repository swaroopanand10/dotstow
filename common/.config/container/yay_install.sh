#!/usr/bin/env bash

# sudo pacman -S go --noconfirm # don't need this as not building it and just installing binary
YAY_DIR=$(realpath "$(dirname "$0")")
source "$YAY_DIR"/functions.sh
if sudo pacman -Qs yay > /dev/null ; then
    echo "yay is already installed!"
else
    echo "yay is not installed. Will be installed now!"
    _installPackagesPacman "base-devel"
    SCRIPT=$(realpath "$0")
    temp_path=$(dirname "$SCRIPT")
    echo "$temp_path"
    # [ -d "$HOME/yay-git" ] || git clone https://aur.archlinux.org/yay-git.git ~/yay-git # this will be slow so just install binary
    [ -d "$HOME/yay-bin" ] || git clone https://aur.archlinux.org/yay-bin.git ~/yay-bin
    cd ~/yay-bin || exit
    makepkg -si
    cd "$temp_path" || exit
    echo "yay has been installed successfully."
fi
echo ""

## Then Install paru binary through yay(fast)
if sudo pacman -Qs paru > /dev/null ; then
    echo "paru is already installed!"
else
yay -S paru-bin --noconfirm
fi
