#!/bin/bash
# INSTALL PARU
cd ~
mkdir ./src
cd ./src
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

./themes.sh