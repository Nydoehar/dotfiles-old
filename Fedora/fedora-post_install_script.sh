#!/bin/bash

# Script to setup a new Fedora installation.

(
cp ~/dotfiles/.bashrc ~/dotfiles/fedora-bash_aliases ~/
mv ~/fedora-bash_aliases ~/.bash_aliases
mkdir -p ~/.config/nvim/
cp ~/dotfiles/neovim-init.lua ~/.config/nvim/
mv ~/.config/nvim/neovim-init.lua ~/.config/nvim/init.lua
(cd ~/dotfiles/ && dconf load / < Gnome_Settings-Full_Backup)
rm -rf ~/dotfiles
exec bash
#c
)

sudo dnf upgrade -y && \
sudo dnf remove -y thunderbird firefox && \
sudo dnf install -y neovim timeshift && \

# Brave Browser start
sudo dnf install dnf-plugins-core && \
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo && \
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc && \
sudo dnf install brave-browser brave-keyring && \
# Brave Browser end

sudo dnf autoremove -y && \
systemctl status firewalld && \

# Mount partitions start
sudo mkdir /mnt/HDD-1 /mnt/NVME-1
sudo mount -t ntfs UUID=2B2F6B4529BC9532 /mnt/HDD-1
sudo mount -t ntfs UUID=74A80C647FDD4806 /mnt/NVME-1
# Mount partitions end 

cp -r /mnt/HDD-1/MY_STUFF/PC/_Dot_Files/transmission ~/.config/

echo " " >> /etc/fstab
echo "UUID=2B2F6B4529BC9532 /mnt/HDD-1 ntfs uid=1000, gid =1000, rw,user, auto, exec 0 0" >> /etc/fstab
echo "UUID=74A80C647FDD4806 /mnt/NVME-1 ntfs uid=1000, gid =1000, rw,user, auto, exec 0 0" >> /etc/fstab
