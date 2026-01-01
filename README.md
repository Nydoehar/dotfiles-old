  # Dotfiles - General
sudo apt update -y && sudo apt install -y git && git clone https://github.com/Nydoehar/dotfiles-old/ && bash ~/dotfiles-old/General/general.sh
  
  # Debian 12 post installation
sudo apt update -y && sudo apt install -y git && git clone https://github.com/Nydoehar/dotfiles-old/ && bash ~/dotfiles-old/debian-post_install_script.sh

  # Fedora post installation
sudo dnf update -y && sudo dnf install -y git && git clone https://github.com/Nydoehar/dotfiles-old/ && bash ~/dotfiles-old/Nobara_Project/post_install_script.sh

  # Dotfiles - Arco Linux
paru -Sy archlinux-keyring --noconfirm && paru -Syu --noconfirm && yes | paru -S git && git clone https://github.com/Nydoehar/dotfiles-old/ && bash ~/dotfiles-old/ArcoLinux/post_install_script.sh

  # Proxmox - Aliases and Neovim
apt update -y && apt upgrade -y && apt install -y git && git clone https://github.com/Nydoehar/dotfiles-old/ && bash ~/dotfiles-old/Proxmox/post_install_script.sh
