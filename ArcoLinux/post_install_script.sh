#!/bin/bash

# Script to setup a new Arco Linux installation.

cp ~/dotfiles/General/.bashrc ~/dotfiles/ArcoLinux/.bash_aliases ~/
mkdir -p ~/.config/nvim/
cp ~/dotfiles/General/neovim-init.lua ~/.config/nvim/
mv ~/.config/nvim/neovim-init.lua ~/.config/nvim/init.lua
mkdir -p ~/.local/bin
cp ~/dotfiles/Scripts/Wrappers/* ~/.local/bin/
(cd ~/.local/bin/ && chmod +x *)
rm -rf ~/dotfiles

yes | paru -S transmission-gtk brave-bin vlc neovim timeshift 

sudo mkdir /mnt/HDD-1 /mnt/NVME-1
sudo mount -t ntfs UUID=2B2F6B4529BC9532 /mnt/HDD-1
sudo mount -t ntfs UUID=74A80C647FDD4806 /mnt/NVME-1

cat /mnt/HDD-1/MY_STUFF/PC/Dot_Files/fstab_lines | sudo tee -a /etc/fstab

transmission-gtk
sleep 5

cp -r /mnt/HDD-1/MY_STUFF/PC/Dot_Files/transmission ~/.config/
cp -r /mnt/HDD-1/MY_STUFF/PC/Dot_Files/Brave-Browser ~/.config/BraveSoftware/

exec bash
