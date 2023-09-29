#!/bin/bash

# Script to setup a new Debian 12 installation.

sudo apt upgrade -y && \
sudo apt purge -y thunderbird firefox && \
sudo apt install -y gufw neovim timeshift brave-browser && \
sudo apt autoremove -y && \
#sudo ufw enable \
sudo ufw status verbose \
