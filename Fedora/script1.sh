#!/bin/bash

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo' 
sudo dnf check-update
sudo dnf install code git gnome-tweaks zsh tilix jetbrains-mono-fonts flat-remix-icon-theme flat-remix-theme -y

sudo usermod --shell $(which zsh) $USER

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

