#!/bin/bash

# Make script executable < chmod +x install_dots.sh

(
cp ~/dotfiles/General/.bashrc ~/dotfiles/Debian/.bash_aliases ~/
mkdir -p ~/.config/nvim/
cp ~/dotfiles/General/Neovim/init.lua ~/.config/nvim/
bash ~/dotfiles/Debian/post_install_script.sh
rm -rf ~/dotfiles
exec bash
#c
)

