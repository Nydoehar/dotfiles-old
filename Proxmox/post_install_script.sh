mkdir -p ~/.config/nvim/
cp ~/dotfiles/General/neovim-init.lua ~/.config/nvim/
mv ~/.config/nvim/neovim-init.lua ~/.config/nvim/init.lua
cat ~/dotfiles/Proxmox/aliases | tee -a ~/.bashrc
rm -rf ~/dotfiles

apt install neovim 

exec bash
