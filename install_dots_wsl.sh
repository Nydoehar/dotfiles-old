#!/bin/bash

# Make script executable < chmod +x Install_dots.sh

(
cp ~/dotfiles/.bashrc ~/dotfiles/.bash_aliases-wsl ~/
mv ~/.bash_aliases-wsl .bash_aliases
mkdir -p ~/.config/nvim/
cp ~/dotfiles/init.lua ~/.config/nvim/
rm -rf ~/dotfiles
exec bash
c
)



