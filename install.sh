#!/bin/bash

clear

echo -e "*** The installation script will copy your dotfiles in a location in your HOME directory and will proceed to symlink all NC"
echo

chmod +x ./create_symlinks.sh
echo -e "Please enter your password. It will be required to copy the dotfiles into the HOME folder and create the symlinks afterwards"
sudo ./create_symlinks.sh
source $HOME/.bash_profile
