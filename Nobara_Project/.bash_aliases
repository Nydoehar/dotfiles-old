### MY ALIASES

alias c='clear && ls --color=auto -Ash --group-directories-first && echo && exec bash'
alias ca='clear && ls --color=auto -Ssh --group-directories-first && exec bash'
alias a='cd .. && c'
alias e='exit'

alias update='sudo timeshift-gtk && sudo dnf update && sudo dnf -y upgrade && sudo dnf -y autoremove && sudo dnf autoclean'
alias search='sudo dnf search'
alias install='sudo dnf install '
alias purge='sudo dnf remove '

alias off='sudo shutdown now'
alias restart='sudo shutdown -r now'
alias suspend='systemctl suspend'

d() {
	cd "$1" && c
}

go() {
  folder_tofind=$(find . -maxdepth 1 -type d -iname "*$1*" | head -n 1)
  cd "$folder_tofind"
  c
  # Usage: enters the folder containing the TERM you entered.
  # Usage: go dung < enters the folder Dungeons and Dragons.
}

o() {
  (xdg-open "$1" && c)
}

nv() {
	nvim "$1" && c 
}

alias dv='nv ~/.config/nvim/init.lua && c' 
alias dh='nv ~/.bash_history && c' 
alias da='nv ~/.bash_aliases && c' 
alias dr='nv ~/.bashrc' 

######             ######
######   FOLDERS   ######
######             ######

alias home='cd ~/ && c'
alias stuff='cd /mnt/HDD/MY_STUFF/ && c'

alias books='cd /mnt/HDD/MY_STUFF/BOOKS/ && c'
alias comics='cd /mnt/HDD/MY_STUFF/BOOKS/Comics && c'
alias ebooks='cd /mnt/HDD/MY_STUFF/BOOKS/Ebooks && c'
alias mangas='cd /mnt/HDD/MY_STUFF/BOOKS/Mangas && c'

alias games='cd /mnt/HDD/MY_STUFF/GAMES/ && c'
alias gamesa='cd /mnt/HDD/MY_STUFF/GAMES/ISOs/ && c'
alias gamesb='cd /mnt/NVME/Games && c'

alias misc='cd /mnt/HDD/MY_STUFF/MISC/ && c'
alias notes='cd /mnt/HDD/MY_STUFF/MISC/Vim && c'
alias cheats='cd /mnt/HDD/MY_STUFF/MISC/Vim/Cheat_Sheets && c'
alias nsfw='nv /mnt/HDD/MY_STUFF/MISC/Vim/NSFW.txt && c'

alias pc='cd /mnt/HDD/MY_STUFF/PC/ && c'
alias apps='cd /mnt/HDD/MY_STUFF/PC/Softwares/ && c'
alias scripts='cd /mnt/HDD/MY_STUFF/PC/Bash/Scripts && c'
alias torrents='cd /mnt/HDD/MY_STUFF/PC/Torrent_Files && c'

alias videos='cd /mnt/HDD/MY_STUFF/VIDEOS/ && c'
alias animes='cd /mnt/HDD/MY_STUFF/VIDEOS/Animes/ && c'
alias movies='cd /mnt/HDD/MY_STUFF/VIDEOS/Movies/ && c'
alias shows='cd /mnt/HDD/MY_STUFF/VIDEOS/TV_Shows/ && c'
alias porn='cd /mnt/HDD/MY_STUFF/VIDEOS/Porn/ && c'

alias dw='nv /mnt/HDD/MY_STUFF/PC/Bash/Scripts/watch1.sh'
alias watch='bash /mnt/HDD/MY_STUFF/PC/Bash/Scripts/watch1.sh'

alias share='(cd /mnt/REMOTE/qBittorrent && c)' 
alias webdev='(xargs brave < /mnt/HDD/MY_STUFF/PC/Bash/Scripts/webdev.txt &>/dev/null && c)'
alias weba='nv /mnt/HDD/MY_STUFF/MISC/Vim/Web_Development.txt'
alias webb='cd /mnt/HDD/MY_STUFF/PC/Web_Development && c'
alias upwork='cd /mnt/HDD/MY_STUFF/MISC/Vim/Upwork && c'
alias back='(cd /mnt/HDD/MY_STUFF/PC/Dot_Files && rm -rf Brave-Browser && cp -r ~/.config/BraveSoftware/Brave-Browser . && cp /home/yann/.bashrc /home/yann/.bash_aliases .)'
alias bravea='(cd /mnt/HDD/MY_STUFF/PC/Softwares/mullvad-browser/ && ./start-mullvad-browser.desktop && xargs brave < /mnt/HDD/MY_STUFF/PC/Bash/Scripts/URLs.txt &>/dev/null && c)'
alias mullvad='(cd /mnt/HDD/MY_STUFF/PC/Softwares/mullvad-browser/ && ./start-mullvad-browser.desktop)'
alias social='(cd /mnt/HDD/MY_STUFF/PC/Softwares/mullvad-browser/Browser && xargs ./mullvadbrowser < /mnt/HDD/MY_STUFF/PC/Bash/Scripts/social.txt)'
alias send='(cd /mnt/HDD/MY_STUFF/PC/Softwares/ && ./LocalSend-1.10.0-linux-x86-64.AppImage)'
alias sync='(cd /mnt/HDD/MY_STUFF/PC/Softwares/syncthing-linux-amd64-v1.23.6 && ./syncthing && c)'
alias freenet='(cd /mnt/HDD/MY_STUFF/PC/Dark_Nets/Freenet && ./run.sh start)'

######                 ######
######   RARELY USED   ######
######                 ######
alias gpu='nvidia-smi --query-gpu=name --format=csv,noheader'
alias kernel='uname -r'
alias umount='sudo umount -l'
alias ntfs='sudo mount -t ntfs'

# List files and FOLDERS by size
alias sizea='clear && df -h .; echo "."; sudo du -h --max-depth=1 | sort -hr'

# List files by size, ignores folders
alias sizeb='clear && ls --color=auto -ASsh && exec bash' 

alias uiso='sudo umount -l /mnt/ISO'

iso() {
  sudo mount -o loop "$1" /mnt/ISO
  cp -r /mnt/ISO "/mnt/STORAGE/MY STUFF/GAMES/_Others/ISO_Temp"
  uiso
}
