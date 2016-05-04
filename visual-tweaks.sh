#!/bin/bash

gsettings set org.gnome.desktop.interface document-font-name 'Ubuntu 8'
gsettings set org.gnome.desktop.interface font-name 'Ubuntu 8'
gsettings set org.gnome.desktop.interface monospace-font-name 'Ubuntu Mono 10'
gsettings set org.gnome.nautilus.desktop font 'Ubuntu 8'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Ubuntu Bold 9'
echo 'Font size optimized!'

dconf write /org/compiz/profiles/unity/plugins/unityshell/icon-size 24
echo 'Icon size optimized!'

gsettings set com.canonical.Unity.Launcher launcher-position Bottom
echo 'Dock position optimized'
