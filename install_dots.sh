#!/bin/bash

# Make script executable < chmod +x install_dots.sh

(
cp ~/dotfiles/.bashrc ~/dotfiles/.bash_aliases ~/
mkdir -p ~/.config/nvim/
cp ~/dotfiles/init.lua ~/.config/nvim/
rm -rf ~/dotfiles
exec bash
c
)

