#!/bin/bash

# Make script executable
# chmod +x Install_dots.sh

(
cp ~/Dotfiles/{.bashrc,.bash_aliases} ~/
exec bash
rm -rf ~/Dotfiles
c
echo "Done!"
)



