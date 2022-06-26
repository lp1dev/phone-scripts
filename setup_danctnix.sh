#!/bin/bash

PACKAGES="emacs-nox git base-devel zsh firefox chromium terminator"

echo "-- Installing default packages --"

sudo pacman -S $PACKAGES

sudo ln -s /home/$USER/phone-scripts/chromium.sh /usr/bin/chromium.sh

git clone https://github.com/lp1dev/archlinux-scripts.git

cp archlinux-scripts/.zshrc ~/.zshrc

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

