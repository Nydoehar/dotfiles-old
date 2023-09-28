  # Debian 12 post installation
sudo apt update && sudo apt install -y git && git clone https://github.com/Nydoehar/dotfiles/ && bash ~/dotfiles/exec_post_install.sh  


  # Dotfiles
The commands below replace the dotfiles on the machine by the dotfiles stored on github.

  # VirtManager
sudo apt update && sudo apt install git neovim spice-vdagent -y && git clone https://github.com/Nydoehar/dotfiles/ && sh ~/dotfiles/install_dots.sh  

sudo dnf update && sudo dnf install git neovim spice-vdagent -y && git clone https://github.com/Nydoehar/dotfiles/ && sh ~/dotfiles/install_dots.sh  

sudo pacman -Syu && sudo pacman install git neovim spice-vdagent -y && git clone https://github.com/Nydoehar/dotfiles/ && sh ~/dotfiles/install_dots.sh  

  # VirtualBox
sudo apt update && sudo apt install git neovim -y && git clone https://github.com/Nydoehar/dotfiles/ && sh ~/dotfiles/install_dots.sh  

sudo dnf update && sudo dnf install git neovim -y && git clone https://github.com/Nydoehar/dotfiles/ && sh ~/dotfiles/install_dots.sh  

sudo pacman -Syu && sudo pacman install git neovim -y && git clone https://github.com/Nydoehar/dotfiles/ && sh ~/dotfiles/install_dots.sh

  # Wsl
sudo apt update && sudo apt install git neovim -y && git clone https://github.com/Nydoehar/dotfiles/ && sh ~/dotfiles/install_dots_wsl.sh

sudo dnf update && sudo dnf install git neovim -y && git clone https://github.com/Nydoehar/dotfiles/ && sh ~/dotfiles/install_dots_wsl.sh

sudo pacman -Syu && sudo pacman -S git neovim -y && git clone https://github.com/Nydoehar/dotfiles/ && sh ~/dotfiles/install_dots_wsl.sh
