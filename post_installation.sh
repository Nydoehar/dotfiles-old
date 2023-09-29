#!/bin/bash

# Script to setup a new Debian 12 installation.

sudo apt upgrade -y \
echo
echo "Upgrade"
echo
sudo apt purge -y thunderbird firefox \
echo
echo "Purge"
echo
sudo apt install -y gufw neovim timeshift brave-browser \
echo
echo "Install"
echo
sudo apt autoremove -y
echo
echo "Autoremove"
echo
sudo ufw enable \
echo
echo "Enable"
echo
sudo ufw status verbose
echo
echo "Verbose"
echo
