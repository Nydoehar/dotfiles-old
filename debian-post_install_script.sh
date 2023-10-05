#!/bin/bash

# Script to setup a new Debian 12 installation.

cp ~/dotfiles/.bashrc ~/dotfiles/debian-bash_aliases ~/
mv ~/debian-bash_aliases ~/.bash_aliases
mkdir -p ~/.config/nvim/
cp ~/dotfiles/neovim-init.lua ~/.config/nvim/
mv ~/.config/nvim/neovim-init.lua ~/.config/nvim/init.lua
cp ~/dotfiles/Scripts/Wrappers/* ~/.local/bin/
(cd ~/dotfiles/ && dconf load / < Gnome_Settings-Full_Backup)
rm -rf ~/dotfiles

timedatectl set-ntp true 
timedatectl set-local-rtc 1 --adjust-system-clock

sudo apt upgrade -y
sudo apt purge -y thunderbird firefox
sudo apt install -y gufw neovim timeshift brave-browser
sudo apt autoremove -y
sudo ufw enable
sudo ufw status verbose

# Mount partitions start
sudo mkdir /mnt/HDD-1 /mnt/NVME-1
sudo mount -t ntfs UUID=2B2F6B4529BC9532 /mnt/HDD-1
sudo mount -t ntfs UUID=74A80C647FDD4806 /mnt/NVME-1
# Mount partitions end 

cp -r /mnt/HDD-1/MY_STUFF/PC/_Dot_Files/transmission ~/.config/

echo " " >> /etc/fstab
echo "UUID=2B2F6B4529BC9532 /mnt/HDD-1 ntfs uid=1000, gid =1000, rw,user, auto, exec 0 0" >> /etc/fstab
echo "UUID=74A80C647FDD4806 /mnt/NVME-1 ntfs uid=1000, gid =1000, rw,user, auto, exec 0 0" >> /etc/fstab

