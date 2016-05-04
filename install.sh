#!/bin/bash

# Check if is sudo
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Set the path (you can modify if your distro store the fonts elsewhere)
path='/usr/share/fonts/'

# Move/Install the fonts
mv msfonts/* $path
mv macfonts/* $path

# Renew the fonts cache
fc-cache -f -v

# Install other core fonts
sudo apt-get install ttf-mscorefonts-installer -fy

