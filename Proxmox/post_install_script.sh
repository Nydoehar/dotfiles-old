mkdir -p ~/.config/nvim/
cp ~/dotfiles-old/General/neovim-init.lua ~/.config/nvim/
mv ~/.config/nvim/neovim-init.lua ~/.config/nvim/init.lua
cat ~/dotfiles-old/Proxmox/aliases | tee -a ~/.bashrc
rm -rf ~/dotfiles-old

apt install neovim 

exec bash
