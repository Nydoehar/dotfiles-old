  # Debian 12 post installation
sudo apt update && sudo apt install -y git && git clone https://github.com/Nydoehar/dotfiles/ && bash ~/dotfiles/Debian/exec_post_install.sh 

  # Fedora post installation
sudo dnf update && sudo dnf install -y git && git clone https://github.com/Nydoehar/dotfiles/ && bash ~/dotfiles/Fedora/exec_post_install.sh
