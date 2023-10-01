#!/bin/bash

# Script to setup a new Debian 12 installation.

sudo apt upgrade -y && \
sudo apt purge -y thunderbird firefox && \
sudo apt install -y gufw neovim timeshift brave-browser && \
sudo apt autoremove -y && \
sudo ufw enable && \
sudo ufw status verbose && \
cp -r /mnt/HDD-1/MY_STUFF/PC/_Dot_Files/transmission ~/.config/ && \
(cd /mnt/HDD-1/MY_STUFF/PC/_Dot_Files/ && dconf load / < Gnome_Settings-Full_Backup) && \
echo " " >> /etc/fstab && \
echo "UUID=2B2F6B4529BC9532 /mnt/HDD-1 ntfs uid=1000, gid =1000, rw,user, auto, exec 0 0" >> /etc/fstab && \
echo "UUID=74A80C647FDD4806 /mnt/NVME-1 ntfs uid=1000, gid =1000, rw,user, auto, exec 0 0" >> /etc/fstab && \
