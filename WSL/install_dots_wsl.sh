#!/bin/bash

# Make script executable < chmod +x Install_dots.sh

(
cp ~/dotfiles/WSL/.bashrc ~/dotfiles/WSL/.bash_aliases-wsl ~/
mv ~/.bash_aliases-wsl .bash_aliases
mkdir -p ~/.config/nvim/
cp ~/dotfiles/Nvim/init.lua ~/.config/nvim/
rm -rf ~/dotfiles
exec bash
c
)
