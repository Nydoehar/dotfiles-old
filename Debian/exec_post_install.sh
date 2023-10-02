#!/bin/bash

# Make script executable < chmod +x install_dots.sh

(
cp ~/dotfiles/Debian/.bashrc ~/dotfiles/Debian/.bash_aliases ~/
mkdir -p ~/.config/nvim/
cp ~/dotfiles/Nvim/init.lua ~/.config/nvim/
bash ~/dotfiles/Debian/post_install_script.sh
rm -rf ~/dotfiles
exec bash
#c
)

