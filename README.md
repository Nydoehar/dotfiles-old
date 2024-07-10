  # Dotfiles - General
sudo apt update -y && sudo apt install -y git && git clone https://github.com/Nydoehar/dotfiles/ && bash ~/dotfiles/General/general.sh
  
  # Debian 12 post installation
sudo apt update -y && sudo apt install -y git && git clone https://github.com/Nydoehar/dotfiles/ && bash ~/dotfiles/debian-post_install_script.sh

  # Fedora post installation
sudo dnf update -y && sudo dnf install -y git && git clone https://github.com/Nydoehar/dotfiles/ && bash ~/dotfiles/Nobara_Project/post_install_script.sh

  # Dotfiles - Arco Linux
paru -Sy archlinux-keyring --noconfirm && paru -Syu --noconfirm && yes | paru -S git && git clone https://github.com/Nydoehar/dotfiles/ && bash ~/dotfiles/ArcoLinux/post_install_script.sh

  # Proxmox - Aliases and Neovim
apt update -y && apt upgrade -y && yes | apt install git && git clone https://github.com/Nydoehar/dotfiles/ && bash ~/dotfiles/Proxmox/post_install_script.sh
