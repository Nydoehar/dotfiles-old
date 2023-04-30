#!/bin/bash

# Make script executable < chmod +x Install_dots.sh

(
cp ~/dotfiles/.bashrc ~/dotfiles/.bash_aliases ~/
rm -rf ~/dotfiles
exec bash
echo "Done!"
sleep 2
c
)

