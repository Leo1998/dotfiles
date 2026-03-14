#!/bin/sh

_distro="$(grep '^ID=' /etc/*-release | cut -d= -f2)"

if [ "$_distro" = "arch" ]; then
    sudo mkdir -p /etc/pacman.d/hooks
    sudo cp clean-remove.hook /etc/pacman.d/hooks/
    sudo cp clean-upgrade.hook /etc/pacman.d/hooks/
fi
