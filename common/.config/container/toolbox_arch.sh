#!/usr/bin/env bash

toolbox create --distro arch "$1"

toolbox run --container "$1" sudo pacman -S reflector --noconfirm

toolbox run --container "$1" sudo reflector --country 'India' --score 5 --sort rate --protocol http,https --verbose --save /etc/pacman.d/mirrorlist

toolbox run --container "$1" sudo pacman -Syu --noconfirm

toolbox run --container "$1" bash -e "$HOME/.config/container/yay_install.sh"

toolbox run --container "$1" bash -e "$HOME/.config/container/install_pack.sh"
