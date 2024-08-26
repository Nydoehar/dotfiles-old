#!/bin/bash

# Script to setup a new Nobara Project installation.

sudo dnf upgrade -y
sudo dnf install -y podman distrobox neovim
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

cat /mnt/HDD/MY_STUFF/PC/DotFiles/General/fstab_lines | sudo tee -a /etc/fstab > /dev/null
cat /mnt/HDD/MY_STUFF/PC/DotFiles/General/root_aliases | sudo tee -a /root/.bashrc > /dev/null

#cp -r /mnt/HDD/MY_STUFF/PC/DotFiles/Apps/Brave-Browser/Default ~/.var/app/com.brave.Browser/config/BraveSoftware/

yes | distrobox-create --name arch-box --image quay.io/toolbx/arch-toolbox:latest
distrobox-enter --name arch-box

#Krohnkite
#https://store.kde.org/p/2144146/

#sudo pacman -Syu --noconfirm
#sudo pacman -S --needed --noconfirm base-devel
#git clone https://aur.archlinux.org/paru.git
#cd paru
#makepkg -si

#paru -S --noconfirm brave vlc timeshift vscodium syncthing

#distrobox-export --app brave
#distrobox-export --app vlc
#distrobox-export --app timeshift
#distrobox-export --app vscodium
#distrobox-export --app syncthing
