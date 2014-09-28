#!/bin/bash

clear

echo -e "\e[1m*** The installation script will copy your dotfiles in a location in your HOME directory and will proceed to symlink all\e[0m"
echo

dotfiles="$HOME/Developer/dotfiles"
mkdir -pv $dir

cp -rf ./ $dotfiles

cd $dotfiles

echo "-------------------------------------------------------"

if [[ -d "$dotfiles" ]]; then
  echo -e "\e[7mSymlinking dotfiles from $dotfiles \e[0m"
else
  echo -e "\e[31m$dotfiles does not exist\e[0m"
  exit 1
fi

link() {
  from="$1"
  to="$2"
  echo -e "\e[32m  --> Linking '$from' to '$to' \e[0m"
  rm -f "$to"
  ln -s "$from" "$to"
}

for location in $(find git -name '.*'); do
  file="${location##*/}"
  link "$dotfiles/$location" "$HOME/$file"
done

echo "-------------------------------------------------------"
echo
