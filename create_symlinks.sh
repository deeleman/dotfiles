#!/bin/bash

dotfiles="$HOME/Developer/dotfiles"
mkdir -pv $dotfiles

cp -rf ./git $dotfiles
cp -rf ./bash $dotfiles

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

for location in $(find bash -name '.*'); do
  file="${location##*/}"
  link "$dotfiles/$location" "$HOME/$file"
done


echo "-------------------------------------------------------"
echo
