#!/usr/bin/env bash

toolbox create --distro arch "$1"

toolbox run --container "$1" sudo rm -rf /etc/pacman.d/gnupg/
toolbox run --container "$1" sudo pacman-key --init
toolbox run --container "$1" sudo pacman-key --populate archlinux

toolbox run --container "$1" sudo pacman -S reflector --noconfirm
toolbox run --container "$1" sudo reflector --country 'India' --score 5 --sort rate --protocol http,https --verbose --save /etc/pacman.d/mirrorlist
toolbox run --container "$1" sudo pacman -Syu --noconfirm

toolbox run --container "$1" bash -e "$HOME/scripts/toolbox/yay_install.sh"
toolbox run --container "$1" bash -e "$HOME/scripts/toolbox/install_pack.sh"
