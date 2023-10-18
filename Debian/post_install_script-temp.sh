#!/bin/bash

# Script to fully configure a new Debian 12 installation to my liking.

# Restore my .bashrc and .bash_aliases
cp ~/dotfiles/General/.bashrc ~/dotfiles/Debian/.bash_aliases ~/

# Create a neovim folder and copy my neovim dotfiles to it
mkdir -p ~/.config/nvim/
cp ~/dotfiles/General/neovim-init.lua ~/.config/nvim/
mv ~/.config/nvim/neovim-init.lua ~/.config/nvim/init.lua

# Create a folder, move my scripts wrappers to it and give them execute permission
mkdir -p ~/.local/bin
cp ~/dotfiles/Scripts/Wrappers/* ~/.local/bin/
(cd ~/.local/bin/ && chmod +x *)

# Restore my sources.list
sudo cp ~/dotfiles/Debian/sources.list /etc/apt/

# Restore my Gnome configuration
(cd ~/dotfiles/General/ && dconf load / < Gnome_Settings-Full_Backup)

# Create an autostart folder and move my .desktop files to it
mkdir -p ~/.config/autostart
mv ~/dotfiles/.desktop_files/transmission-gtk.desktop ~/dotfiles/.desktop_files/com.brave.Browser.desktop ~/.config/autostart/

# Delete the github folder from my PC
rm -rf ~/dotfiles

# Set timezone to RTC time, to avoid time problems when dual-boot with Windows
timedatectl set-ntp true 
timedatectl set-local-rtc 1 --adjust-system-clock

# Update, remove, install programs and add the flathub repo
sudo apt update -y
sudo apt upgrade -y
sudo apt purge -y thunderbird firefox
sudo apt install -y flatpak gnome-software-plugin-flatpak gufw nvidia-driver firmware-misc-nonfree vlc neovim timeshift
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Remove packages that aren't necessary anymore
sudo apt autoremove -y

# Enable UFW and show it status
sudo ufw enable
sudo ufw status verbose

# Create folders and mount my partitions on them
sudo mkdir /mnt/HDD-1 /mnt/NVME-1
sudo mount -t ntfs UUID=2B2F6B4529BC9532 /mnt/HDD-1
sudo mount -t ntfs UUID=74A80C647FDD4806 /mnt/NVME-1

# Restore dotfiles of programs
cp -r /mnt/HDD-1/MY_STUFF/PC/_Dot_Files/transmission ~/.config/

# Add lines to fstab to mount my partitions on boot
cat /mnt/HDD-1/MY_STUFF/PC/_Dot_Files/fstab_lines | sudo tee -a /etc/fstab

# Update the terminal
exec bash
