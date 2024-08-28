#!/bin/bash

# Script to setup a new Arco Linux installation

cp ~/dotfiles-old/General/.bashrc ~/dotfiles-old/ArcoLinux/.bash_aliases ~/
mkdir -p ~/.config/nvim/
cp ~/dotfiles-old/General/neovim-init.lua ~/.config/nvim/
mv ~/.config/nvim/neovim-init.lua ~/.config/nvim/init.lua
mkdir -p ~/.local/bin
cp ~/dotfiles-old/Scripts/Wrappers/* ~/.local/bin/
(cd ~/.local/bin/ && chmod +x *)
rm -rf ~/dotfiles-old

yes | paru -S brave-bin vlc neovim timeshift xfce4-appfinder

sudo mkdir /mnt/HDD /mnt/NVME
sudo mount -t ntfs UUID=2B2F6B4529BC9532 /mnt/HDD
sudo mount -t ntfs UUID=6B4FA4C31DAB7943 /mnt/NVME

#cat /mnt/HDD/MY_STUFF/PC/Dot_Files/fstab_lines | sudo tee -a /etc/fstab
#cat /mnt/HDD/MY_STUFF/PC/Dot_Files/root_aliases | sudo tee -a /root/.bashrc

#cp -r /mnt/HDD/MY_STUFF/PC/Dot_Files/Brave-Browser ~/.config/BraveSoftware/
#cp -r /mnt/HDD/MY_STUFF/PC/Dot_Files/transmission ~/.config/

exec bash
