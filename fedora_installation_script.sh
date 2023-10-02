#!/bin/bash

# Script to setup a new Fedora installation.

sudo dnf upgrade -y && \
sudo dnf remove -y thunderbird firefox && \
sudo dnf install -y gufw neovim timeshift && \
# Brave Browser
sudo dnf install dnf-plugins-core && \
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo && \
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc && \
sudo dnf install brave-browser brave-keyring && \
# Brave Browser
sudo dnf autoremove -y && \
sudo ufw enable && \
sudo ufw status verbose && \
# Mount Paritions
sudo mount -t ntfs UUID=2B2F6B4529BC9532 /mnt/HDD-1
sudo mount -t ntfs UUID=74A80C647FDD4806 /mnt/NVME-1
# Mount Partitions 
cp -r /mnt/HDD-1/MY_STUFF/PC/_Dot_Files/transmission ~/.config/ && \
(cd /mnt/HDD-1/MY_STUFF/PC/_Dot_Files/ && dconf load / < Gnome_Settings-Full_Backup) && \
echo " " >> /etc/fstab && \
echo "UUID=2B2F6B4529BC9532 /mnt/HDD-1 ntfs uid=1000, gid =1000, rw,user, auto, exec 0 0" >> /etc/fstab && \
echo "UUID=74A80C647FDD4806 /mnt/NVME-1 ntfs uid=1000, gid =1000, rw,user, auto, exec 0 0" >> /etc/fstab && \
