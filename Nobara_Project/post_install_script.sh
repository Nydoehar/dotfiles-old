#!/bin/bash

# Script to setup a new Fedora installation.

cp ~/dotfiles/General/.bashrc ~/dotfiles/Nobara_Project/.bash_aliases ~/
mkdir -p ~/.config/nvim/
cp ~/dotfiles/General/neovim-init.lua ~/.config/nvim/
mv ~/.config/nvim/neovim-init.lua ~/.config/nvim/init.lua
mkdir -p ~/.local/bin
cp ~/dotfiles/Scripts/Wrappers/* ~/.local/bin/
(cd ~/.local/bin/ && chmod +x *)
(cd ~/dotfiles/General/ && dconf load / < Gnome_Settings-Full_Backup)
mkdir -p ~/.config/autostart
mv ~/dotfiles/.desktop_files/transmission-gtk.desktop ~/dotfiles/.desktop_files/com.brave.Browser.desktop ~/.config/autostart/
rm -rf ~/dotfiles

timedatectl set-ntp true 
timedatectl set-local-rtc 1 --adjust-system-clock

sudo dnf upgrade -y
sudo dnf remove -y thunderbird
sudo dnf install -y transmission vlc neovim timeshift typescript.noarch make gnome-shell-extension-pop-shell xprop
flatpak install flathub --user -y com.brave.Browser

sudo dnf autoremove -y
systemctl status firewalld

sudo mkdir /mnt/HDD-1 /mnt/NVME-1
sudo mount -t ntfs UUID=2B2F6B4529BC9532 /mnt/HDD-1
sudo mount -t ntfs UUID=74A80C647FDD4806 /mnt/NVME-1

flatpak run com.brave.Browser && killall brave

cp -r /mnt/HDD-1/MY_STUFF/PC/_Dot_Files/transmission ~/.config/
cp -r /mnt/HDD-1/MY_STUFF/PC/_Dot_Files/Brave-Browser ~/.var/app/com.brave.Browser/config/BraveSoftware/
cp -r /mnt/HDD-1/MY_STUFF/PC/_Dot_Files/.mozilla ~/

sudo su -c "echo ' ' >> /etc/fstab"
sudo su -c "echo 'UUID=2B2F6B4529BC9532 /mnt/HDD-1 ntfs uid=1000, gid =1000, rw,user, auto, exec 0 0' >> /etc/fstab"
sudo su -c "echo 'UUID=74A80C647FDD4806 /mnt/NVME-1 ntfs uid=1000, gid =1000, rw,user, auto, exec 0 0' >> /etc/fstab"

exect bash
