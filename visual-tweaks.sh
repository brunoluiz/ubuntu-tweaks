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
gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ launcher-opacity 0.6
gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ background-color '#000000dd'
gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ dash-blur-experimental 0
echo 'Dock optimized!'

