
# .bashrc

#Enable .bash_alaises
if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# Set default editor to Neovim
export EDITOR=nvim

### ARCHIVE EXTRACTION
# usage: ex <file>
ex ()
{
  if [ -f "$1" ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# MY PATHS
export home=~/
export stuff="/mnt/STORAGE/MY STUFF/"
export media="/mnt/STORAGE/MY STUFF/MEDIA/"
export misc="/mnt/STORAGE/MY STUFF/MISC/"
export porn="/mnt/STORAGE/MY STUFF/MEDIA/Porn/Videos/"
export videos="/mnt/STORAGE/MY STUFF/MEDIA/Videos/"
export linuxs="/mnt/LINUX_STORAGE/"

export games="/mnt/STORAGE/MY STUFF/GAMES/"
export others="/mnt/STORAGE/MY STUFF/GAMES/_Others"
export torrents="/mnt/STORAGE/MY STUFF/GAMES/_Others/_Torrents"
export steam="/mnt/STORAGE/MY STUFF/GAMES/Steam/steamapps/common"

export pc="/mnt/STORAGE/MY STUFF/PC/"
export coding="/mnt/STORAGE/MY STUFF/PC/Coding/Visual Studio Code"
export scripts="/mnt/STORAGE/MY STUFF/PC/Linux_Scripts"
export nobara="/mnt/STORAGE/MY STUFF/PC/Linux_Scripts/Nobara Project"

export editing="/mnt/STORAGE/MY STUFF/VIDEO EDITING/"
export captures="/mnt/STORAGE/MY STUFF/VIDEO EDITING/Captures"
export converted="/mnt/STORAGE/MY STUFF/VIDEO EDITING/Converted Videos"

set +o history

set -o vi

export PATH="$/mnt/STORAGE/MY STUFF/PC/Softwares/platform-tools:$PATH"
