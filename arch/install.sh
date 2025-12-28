#!/bin/sh

_distro="$(grep '^ID=' /etc/*-release | cut -d= -f2)"

if [ "$_distro" = "arch" ]; then
    sudo mkdir -p /etc/pacman.d/hooks
    sudo cp clean-remove.hook /etc/pacman.d/hooks/
    sudo cp clean-upgrade.hook /etc/pacman.d/hooks/

    sudo cp 50-keyboard.conf /etc/X11/xorg.conf.d/
    sudo cp 20-amdgpu.conf /etc/X11/xorg.conf.d/
fi
