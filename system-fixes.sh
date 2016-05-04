#!/bin/bash

# Check if is sudo
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Fix the cedilla issue
cd /tmp
cat /etc/environment > environment.tmp
echo "GTK_IM_MODULE=cedilla" >> environment.tmp
echo "QT_IM_MODULE=cedilla" >> environment.tmp

mv environment.tmp /etc/enviroment
