#!/bin/bash

# Make script executable
# chmod +x Install_dots.sh

(
cp ~/Dotfiles/{.bashrc,.bash_aliases} ~/
rm -rf ~/Dotfiles
c
exec bash
echo "Done!"
)



