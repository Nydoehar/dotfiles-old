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

alias ds='nv /mnt/STORAGE/MY\ STUFF/MISC/Dark_Souls-Video_Ideas.txt'

# FOLDERS
alias home='cd ~/ && c'
alias stuff='cd /mnt/STORAGE/MY\ STUFF/ && c'
alias media='cd /mnt/STORAGE/MY\ STUFF/MEDIA/ && c'
alias misc='cd /mnt/STORAGE/MY\ STUFF/MISC/ && c'
alias porn='cd /mnt/STORAGE/MY\ STUFF/MEDIA/Porn/Videos/ && c'
alias videos='cd /mnt/STORAGE/MY\ STUFF/MEDIA/Videos/ && c'
alias linuxs='cd /mnt/LINUX_STORAGE/ && c'

alias games='cd /mnt/STORAGE/MY\ STUFF/GAMES/ && c'
alias others='cd /mnt/STORAGE/MY\ STUFF/GAMES/_Others && c'
alias torrents='cd /mnt/STORAGE/MY\ STUFF/GAMES/_Others/_Torrents && c'
alias steam='cd /mnt/STORAGE/MY\ STUFF/GAMES/Steam/steamapps/common && c'

alias pc='cd /mnt/STORAGE/MY\ STUFF/PC/ && c'
alias coding='cd /mnt/STORAGE/MY\ STUFF/PC/Coding/Visual\ Studio\ Code && c'
alias scripts='cd /mnt/STORAGE/MY\ STUFF/PC/Linux_Scripts && c'

alias editing='cd /mnt/STORAGE/MY\ STUFF/VIDEO\ EDITING/ && c'
alias captures='cd /mnt/STORAGE/MY\ STUFF/VIDEO\ EDITING/Captures && c'
alias converted='cd /mnt/STORAGE/MY\ STUFF/VIDEO\ EDITING/Converted\ Videos && c'

alias dotawesome='d ~/.config/awesome/'
alias awesome1='cp ~/.config/awesome/rc.lua ~/.config/awesome/theme.lua "/mnt/STORAGE/MY STUFF/PC/Linux_DotFiles/AwesomeWM"'
alias awesome2='rm -r ~/.config/awesome/* && cp "/mnt/STORAGE/MY STUFF/PC/Linux_DotFiles/AwesomeWM/"* ~/.config/awesome/'

### RARELY USED 

alias tree='tree -dL 3 ' 
#Needs to install 'tree' package. 

alias sysinfo='inxi -c 0 -ACdGMNSz'
alias gpu='nvidia-smi --query-gpu=name --format=csv,noheader'
alias kernel='uname -r'

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
  celluloid "$video_file"
  c
  # Usage: play "WORD1" or play WORD1-WORD2"
  # E.g play one 05 < plays episode 05 of one piece.
}

# DELETE FILES
delete() {
  echo
  find . -iname "*$1*" -print

  read -p $'Remove? [y/N]: ' -n 1 -r
  echo

  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    find . -iname "*$1*" -delete
  fi

  clear && ls --color=auto -Ash && exec bash
  # Usage: delete "TERM-YOU-WANT"
  # delete one < find all files and folders with the name 'one'.
}

# DISTROBOX
alias arch='distrobox enter --root archlinux'
alias boxupd='distrobox-upgrade --all'
