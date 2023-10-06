#!/bin/bash

# Script to setup a new Debian 12 installation.

cp ~/dotfiles/.bashrc ~/dotfiles/debian-bash_aliases ~/
mv ~/debian-bash_aliases ~/.bash_aliases
mkdir -p ~/.config/nvim/
cp ~/dotfiles/neovim-init.lua ~/.config/nvim/
mv ~/.config/nvim/neovim-init.lua ~/.config/nvim/init.lua
mkdir -p ~/.local/bin
cp ~/dotfiles/Scripts/Wrappers/* ~/.local/bin/
(cd ~/dotfiles/ && dconf load / < Gnome_Settings-Full_Backup)
rm -rf ~/dotfiles

timedatectl set-ntp true 
timedatectl set-local-rtc 1 --adjust-system-clock

sudo apt upgrade -y
sudo apt purge -y thunderbird
sudo apt install -y gufw neovim timeshift node-typescript make

git clone https://github.com/pop-os/shell.git
(cd shell && yes | make local-install)

sudo apt autoremove -y
sudo ufw enable
sudo ufw status verbose

sudo mkdir /mnt/HDD-1 /mnt/NVME-1
sudo mount -t ntfs UUID=2B2F6B4529BC9532 /mnt/HDD-1
sudo mount -t ntfs UUID=74A80C647FDD4806 /mnt/NVME-1

cp -r /mnt/HDD-1/MY_STUFF/PC/_Dot_Files/transmission ~/.config/

sudo su -c "echo ' ' >> /etc/fstab"
sudo su -c "echo 'UUID=2B2F6B4529BC9532 /mnt/HDD-1 ntfs uid=1000, gid =1000, rw,user, auto, exec 0 0' >> /etc/fstab"
sudo su -c "echo 'UUID=74A80C647FDD4806 /mnt/NVME-1 ntfs uid=1000, gid =1000, rw,user, auto, exec 0 0' >> /etc/fstab"
