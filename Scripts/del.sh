#!/bin/bash

findy=$(find . -maxdepth 1 -iname "*$1*")
echo
echo "$findy"

read -p 'Remove? [y/N]: ' -n 1 -r 

echo

if [ $REPLY = y ]
then
  rm -rf "$findy"
fi

clear && ls --color=auto -Ash && exec bash
