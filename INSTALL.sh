#!/usr/bin/env bash

# update everything first
sudo apt-get update
sudo apt-get upgrade -y

# Tilix must come before zsh
./tilix.sh
# git should come before zsh and vim
./git-config.sh
./zsh.sh
./vim.sh

./anaconda.sh

./docker.sh
./additional-tools.sh

./fonts.sh

./keybindings.sh
./sysconfig.sh

./bt-headset-udev.sh
./gtk-config.sh

./applications.sh

sudo apt autoremove -y
