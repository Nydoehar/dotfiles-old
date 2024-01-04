#!/bin/bash

# Script to setup a new Fedora installation.

cp ~/dotfiles/General/.bashrc ~/dotfiles/ArcoLinux/.bash_aliases ~/
mkdir -p ~/.config/nvim/
cp ~/dotfiles/General/neovim-init.lua ~/.config/nvim/
mv ~/.config/nvim/neovim-init.lua ~/.config/nvim/init.lua
mkdir -p ~/.local/bin
cp ~/dotfiles/Scripts/Wrappers/* ~/.local/bin/
(cd ~/.local/bin/ && chmod +x *)
mkdir -p ~/.config/autostart
mv ~/dotfiles/.desktop_files/transmission-gtk.desktop ~/dotfiles/.desktop_files/com.brave.Browser.desktop ~/.config/autostart/
rm -rf ~/dotfiles

#timedatectl set-ntp true 
#timedatectl set-local-rtc 1 --adjust-system-clock

yes | paru -Syu
yes | paru -S transmission vlc neovim timeshift 
flatpak install flathub --user -y com.brave.Browser
flatpak uninstall --unused

sudo mkdir /mnt/HDD-1 /mnt/NVME-1
sudo mount -t ntfs UUID=2B2F6B4529BC9532 /mnt/HDD-1
sudo mount -t ntfs UUID=74A80C647FDD4806 /mnt/NVME-1

cat /mnt/HDD-1/MY_STUFF/PC/Dot_Files/fstab_lines | sudo tee -a /etc/fstab

flatpak run com.brave.Browser
transmission-gtk

cp -r /mnt/HDD-1/MY_STUFF/PC/Dot_Files/transmission ~/.config/
cp -r /mnt/HDD-1/MY_STUFF/PC/Dot_Files/Brave-Browser ~/.var/app/com.brave.Browser/config/BraveSoftware/

exec bash
