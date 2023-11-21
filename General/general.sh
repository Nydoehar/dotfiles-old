#!/bin/bash

cp ~/dotfiles/General/.bashrc ~/dotfiles/Debian/.bash_aliases ~/
mkdir -p ~/.config/nvim/
cp ~/dotfiles/General/neovim-init.lua ~/.config/nvim/
mv ~/.config/nvim/neovim-init.lua ~/.config/nvim/init.lua
mkdir -p ~/.local/bin
cp ~/dotfiles/Scripts/Wrappers/* ~/.local/bin/
(cd ~/.local/bin/ && chmod +x *)
rm -rf ~/dotfiles
