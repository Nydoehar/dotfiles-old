#!/bin/bash

# Script to setup a new Debian 12 installation.

sudo apt update \
sudo apt -y upgrade \
sudo apt -y purge thunderbird firefox \
sudo apt -y install gufw git neovim timeshift brave-browser \
sudo apt -y autoremove
sudo ufw enable \
sudo ufw status verbose
