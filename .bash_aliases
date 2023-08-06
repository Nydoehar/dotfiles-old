### MY ALIASES

alias c='clear && ls --color=auto -Ash && exec bash'
alias a='cd .. && c'
alias e='exit'

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

alias update='sudo timeshift-gtk && sudo apt update && sudo apt upgrade -y'
alias install='sudo apt install '
alias remove='sudo apt remove '

alias off='sudo shutdown now'
alias restart='sudo shutdown -r now'
alias suspend='systemctl suspend'

nv() {
	nvim "$1" && c 
}

alias dv='nv ~/.config/nvim/init.lua && c' 
alias dh='nv ~/.bash_history && c' 
alias da='nv ~/.bash_aliases && c' 
alias dr='nv ~/.bashrc' 

alias ds='nv /mnt/HDD-1/MY_STUFF/MISC/Dark_Souls-Video_Ideas.txt'

  # FOLDERS
alias home='cd ~/ && c'
alias stuff='cd /mnt/HDD-1/MY_STUFF/ && c'

alias books='cd /mnt/HDD-1/MY_STUFF/BOOKS/ && c'
alias comics='cd /mnt/HDD-1/MY_STUFF/BOOKS/1-Comics && c'
alias ebooks='cd /mnt/HDD-1/MY_STUFF/BOOKS/2-Ebooks && c'
alias mangas='cd /mnt/HDD-1/MY_STUFF/BOOKS/3-Mangas && c'

alias games='cd /mnt/HDD-1/MY_STUFF/GAMES/ && c'
alias torrents='cd /mnt/HDD-1/MY_STUFF/GAMES/1-Installation_Files/ && c'
alias installed='cd /mnt/NVME-1/GAMES/My_Games/ && c'

alias misc='cd /mnt/HDD-1/MY_STUFF/MISC/ && c'
alias notes='cd /mnt/HDD-1/MY_STUFF/MISC/Vim && c'

alias pc='cd /mnt/HDD-1/MY_STUFF/PC/ && c'
alias apps='cd /mnt/HDD-1/MY_STUFF/PC/2-Softwares/ && c'

alias videos='cd /mnt/HDD-1/MY_STUFF/VIDEOS/ && c'
alias animes='cd /mnt/HDD-1/MY_STUFF/VIDEOS/1-Animes/ && c'
alias movies='cd /mnt/HDD-1/MY_STUFF/VIDEOS/2-Movies/ && c'
alias shows='cd /mnt/HDD-1/MY_STUFF/VIDEOS/3-TV_Shows/ && c'
alias porn='cd /mnt/HDD-1/MY_STUFF/VIDEOS/4-Porn/2-Videos/ && c'

alias sonic='cd /mnt/NVME-1/ && c'

alias send='(cd /mnt/HDD-1/MY_STUFF/PC/2-Softwares/ && ./LocalSend-1.10.0-linux-x86-64.AppImage)'
alias sync='(cd /var/lib/flatpak/app/me.kozec.syncthingtk/x86_64/stable/79c7a115c5a9d0744022bf088039e2b76946ead5afdf2280a80fa811056f67f5/files/bin && ./syncthing)'

### RARELY USED 
alias sysinfo='inxi -c 0 -ACdGMNSz'
alias gpu='nvidia-smi --query-gpu=name --format=csv,noheader'
alias kernel='uname -r'

alias tree='tree -dL 3 ' 
#Needs to install 'tree' package. 

alias umount='sudo umount -l'
alias ntfs='sudo mount -t ntfs'

alias sizea='clear && ls --color=auto -ASsh && exec bash' 
# List files by size, ignores folders

alias sizeb='clear && df -h .; echo "."; sudo du -h --max-depth=1 | sort -hr'
# List files by size, counting folders

alias uiso='sudo umount -l /mnt/ISO'

iso() {
  sudo mount -o loop "$1" /mnt/ISO
  cp -r /mnt/ISO "/mnt/STORAGE/MY STUFF/GAMES/_Others/ISO_Temp"
  uiso
}

### SAVE SCUMMING
alias ds2='d "/mnt/LINUX_STORAGE/Lutris/dark-souls-ii/drive_c/users/yann/AppData/Roaming/DarkSoulsII/0110000100001337/"'

dark1() (
  cd "/mnt/LINUX_STORAGE/Lutris/dark-souls-ii/drive_c/users/yann/AppData/Roaming/DarkSoulsII/0110000100001337/" 
  var="$1"
  cp DARKSII0000.sl2 BACKUP/ 
  cd BACKUP 
  mv DARKSII0000.sl2 "$1"-DARKSII0000.sl2
)

dark2() (
  cd "/mnt/LINUX_STORAGE/Lutris/dark-souls-ii/drive_c/users/yann/AppData/Roaming/DarkSoulsII/0110000100001337/"
  var="$1"
  rm *.sl2
  cp BACKUP/"$1"-DARKSII0000.sl2 .
  mv "$1"-DARKSII0000.sl2 DARKSII0000.sl2
)

# PLAY VIDEO
play() { 
  video_file=$(find . -type f -iname "*$1*$2*.mp4" -o -iname "*$2*$1*.mp4" -o -iname "*$1*$2*.mkv" -o -iname "*$2*$1*.mkv" | head -n 1)
  totem "$video_file"
  c
  # Usage: play "WORD1" or play WORD1-WORD2"
  # E.g. play one 05 < plays episode 05 of one piece.
}

# DELETE FILES
del() {
  echo
  find . -iname "*$1*" -print

  read -p $'Remove? [y/N]: ' -n 1 -r
  echo

  if [[ $REPLY =~ ^[Yy]$ ]]
  then
   #find . -iname "*$1*" -delete
   find . -iname "*$1*" -exec rm -rf {} \;
  fi

  clear && ls --color=auto -Ash && exec bash
  # Usage: delete "TERM-YOU-WANT"
  # E.g. Delete one < find all files and folders containing 'one' in its name.
}

# DISTROBOX
alias arch='distrobox enter --root archlinux'
alias boxupd='distrobox-upgrade --all'
