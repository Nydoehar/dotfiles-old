#!/bin/bash

# Script to setup a new Nobara Project installation.

sudo dnf upgrade -y
sudo dnf install podman distrobox neovim
sudo dnf autoremove -y

cp ~/dotfiles/General/.bashrc ~/dotfiles/Nobara_Project/.bash_aliases ~/
mkdir -p ~/.config/nvim/
cp ~/dotfiles/General/neovim-init.lua ~/.config/nvim/
mv ~/.config/nvim/neovim-init.lua ~/.config/nvim/init.lua
mkdir -p ~/.local/bin
cp ~/dotfiles/Scripts/Wrappers/* ~/.local/bin/
(cd ~/.local/bin/ && chmod +x *)
#(cd ~/dotfiles/General/ && dconf load / < Gnome_Settings-Full_Backup)
mkdir -p ~/.config/autostart
mv ~/dotfiles/.desktop_files/com.brave.Browser.desktop ~/.config/autostart/
rm -rf ~/dotfiles

timedatectl set-ntp true 
timedatectl set-local-rtc 1 --adjust-system-clock

q | systemctl status firewalld

sudo mkdir /mnt/HDD /mnt/NVME
sudo mount -t ntfs UUID=2B2F6B4529BC9532 /mnt/HDD
sudo mount -t ntfs UUID=6B4FA4C31DAB7943 /mnt/NVME

cat /mnt/HDD/MY_STUFF/PC/Dot_Files/fstab_lines | sudo tee -a /etc/fstab
cat /mnt/HDD/MY_STUFF/PC/Dot_Files/root_aliases | sudo tee -a /root/.bashrc

cp -r /mnt/HDD-1/MY_STUFF/PC/Dot_Files/Brave-Browser ~/.var/app/com.brave.Browser/config/BraveSoftware/

distrobox create --image quay.io/toolbx/arch-toolbox:latest arch_linux_box
distrobox enter --name arch-linux-box

exec bash
