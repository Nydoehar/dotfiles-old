#!/bin/bash

# Make script executable
# chmod +x Install_dots.sh

(cd ~/Dotfiles
cp .bashrc .bash_aliases ~/
rm -rf ~/Dotfiles
exec bash
clear 
c)



