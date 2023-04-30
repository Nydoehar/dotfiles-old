#!/bin/bash

# Make script executable < chmod +x Install_dots.sh

(
cp ~/dotfiles/.bashrc ~/dotfiles/.bash_aliases-wsl ~/
mv ~/.bash_aliases-wsl .bash_aliases
rm -rf ~/dotfiles
exec bash
c
)



