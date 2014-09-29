#!/bin/bash

clear

echo -e "*** The installation script will copy your dotfiles in a location in your HOME directory and will proceed to symlink all"
echo

dotfiles="$HOME/Developer/dotfiles"
mkdir -pv $dotfiles

cp -rf ./ $dotfiles

cd $dotfiles

echo "-------------------------------------------------------"

if [[ -d "$dotfiles" ]]; then
  echo -e "Symlinking dotfiles from $dotfiles"
else
  echo -e "$dotfiles does not exist"
  exit 1
fi

link() {
  from="$1"
  to="$2"
  echo -e "  --> Linking '$from' to '$to'"
  rm -f "$to"
  ln -s "$from" "$to"
}

for location in $(find git -name '.*'); do
  file="${location##*/}"
  link "$dotfiles/$location" "$HOME/$file"
done

echo "-------------------------------------------------------"
echo
