  # Dotfiles - General
sudo apt update -y && sudo apt install -y git && git clone https://github.com/Nydoehar/dotfiles/ && bash ~/dotfiles/General/general.sh
  
  # Debian 12 post installation
sudo apt update -y && sudo apt install -y git && git clone https://github.com/Nydoehar/dotfiles/ && bash ~/dotfiles/debian-post_install_script.sh

  # Fedora post installation
sudo dnf update -y && sudo dnf install -y git && git clone https://github.com/Nydoehar/dotfiles/ && bash ~/dotfiles/Nobara_Project/post_install_script.sh

  # Dotfiles - Arco Linux
yes | pacman -Sy archlinux-keyring && yes | paru -Syu && yes | paru -S git && git clone https://github.com/Nydoehar/dotfiles/ && bash ~/dotfiles/ArcoLinux/post_install_script.sh
