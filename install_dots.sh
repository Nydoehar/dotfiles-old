#!/bin/bash

# Make script executable
# chmod +x Install_dots.sh

(
cp ~/Dotfiles/.bashrc ~/Dotfiles/.bash_aliases ~/
rm -rf ~/Dotfiles
exec bash
c
echo "Done!"
)



