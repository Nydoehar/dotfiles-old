alias off='shutdown.exe /t 0'

alias c='clear && ls --color=auto -Ash && exec bash'
alias cs='clear && ls --color=auto -ASsh && exec bash'
alias a='cd .. && c'
alias e='exit'

d() {
	cd "$1" && c
}

enter() {
  folder_tofind=$(find . -maxdepth 1 -type d -iname "*$1*" | head -n 1)
  cd "$folder_tofind"
  c
}

alias update='sudo apt update && sudo apt upgrade -y'
alias install='sudo apt install '
alias remove='sudo apt remove '

alias bye='sudo shutdown now'
alias restart='sudo shutdown -r now'
alias suspend='systemctl suspend'

alias size='clear && df -h .; echo "."; sudo du -h --max-depth=1 | sort -hr'
alias sizer='(cd ~/ && clear && df -h .; echo "."; du -h --max-depth=1 | sort -hr)'
alias tree='tree -dL 3 '

alias umount='sudo umount -l'
alias ntfs='sudo mount -t ntfs'
alias iso='sudo mount -o loop'

alias vlca='"/mnt/c/Program Files/VideoLAN/VLC/vlc.exe"'

vlc() {
  vlca "$1" && c
}

nv() {
#  "/mnt/d/MY STUFF/PC/Softwares/nvim.appimage" "$1" && c 
   nvim "$1" && c	
}

alias elden='d /mnt/c/Users/Yann/AppData/Roaming/EldenRing/76561197960267366/'

elden1() (
  cd "/mnt/c/Users/Yann/AppData/Roaming/EldenRing/76561197960267366"
  var="$1"
  cp ER0000.sl2 ER0000.sl2.bak BackUp/
  cd BackUp
  mv ER0000.sl2 "$1"-ER0000.sl2
  mv ER0000.sl2.bak "$1"-ER0000.sl2.bak
  c
)

elden2() (
  cd "/mnt/c/Users/Yann/AppData/Roaming/EldenRing/76561197960267366"
  var="$1"
  rm *.sl2
  cp BackUp/"$1"-ER0000.sl2 BackUp/"$1"-ER0000.sl2.bak .
  mv "$1"-ER0000.sl2 ER0000.sl2
  mv "$1"-ER0000.sl2.bak ER0000.sl2.bak
  c
)

alias dv='nv ~/.config/nvim/init.lua && c'
alias dh='nv ~/.bash_history && c'
alias da='nv ~/.bash_aliases && c'
alias drc='nv ~/.bashrc'

alias bakdot='cp ~/.bash_aliases ~/.bashrc ~/.config/nvim/init.lua /mnt/d/MY\ STUFF/PC/Linux_DotFiles/WSL && c'
alias ds='nv /mnt/d/MY\ STUFF/MISC/Dark_Souls-Video_Ideas.txt'

p() { 
  #cd "/mnt/d/MY STUFF/MEDIA/Videos"
  video_file=$(find . -type f -iname "*$1*$2*.mp4" -o -iname "*$2*$1*.mp4" -o -iname "*$1*$2*.mkv" -o -iname "*$2*$1*.mkv" | head -n 1)
  "/mnt/c/Program Files/VideoLAN/VLC/vlc.exe" "$video_file"
  #c - ### If entering a specific folder at the start.
  c
}

o() {
  (xdg-open "$1" && c)
}

srm () {
	echo 
	find . -wholename "*$1*"
	echo

  read -p $'Remove? [y/N]: ' -n 1 -r

  if [[ $REPLY =~ ^[Yy]$ ]]
    then
    find . -wholename "*$1*" -delete
	  c

  else
    c
	fi
}

alias home='cd ~/ && c'
alias stuff='cd /mnt/d/MY\ STUFF/ && c'
alias media='cd /mnt/d/MY\ STUFF/MEDIA/ && c'
alias misc='cd /mnt/d/MY\ STUFF/MISC/ && c'
alias porn='cd /mnt/d/MY\ STUFF/MEDIA/Porn/Videos/ && c'
alias videos='cd /mnt/d/MY\ STUFF/MEDIA/Videos/ && c'
alias linuxs='cd /mnt/d/LINUX_ && c'

alias games='cd /mnt/d/MY\ STUFF/GAMES/ && c'
alias others='cd /mnt/d/MY\ STUFF/GAMES/_Others && c'
alias torrents='cd /mnt/d/MY\ STUFF/GAMES/_Others/_Torrents && c'
alias steam='cd /mnt/d/MY\ STUFF/GAMES/Steam/steamapps/common && c'
alias sonic='cd /mnt/e && c'

alias pc='cd /mnt/d/MY\ STUFF/PC/ && c'
alias coding='cd /mnt/d/MY\ STUFF/PC/Coding/Visual\ Studio\ Code && c'
alias scripts='cd /mnt/d/MY\ STUFF/PC/Linux_Scripts && c'

alias editing='cd /mnt/d/MY\ STUFF/VIDEO\ EDITING/ && c'
alias captures='cd /mnt/d/MY\ STUFF/VIDEO\ EDITING/Captures && c'
alias converted='cd /mnt/d/MY\ STUFF/VIDEO\ EDITING/Converted\ Videos && c'

alias hand='d "/mnt/d/MY STUFF/MEDIA/Videos/Handyman_Saitou_in_Another_World"'
