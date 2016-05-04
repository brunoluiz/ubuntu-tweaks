#!/bin/bash

# Check if is sudo
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Set the path (you can modify if your distro store the fonts elsewhere)
path='/usr/share/fonts/'

apt-get update

# Install the fonts
cp -R fonts/ms-fonts $path
cp -R fonts/apple-fonts $path

# Install other core fonts
sudo apt-get install ttf-mscorefonts-installer -fy

# Renew the fonts cache
fc-cache -f -v
