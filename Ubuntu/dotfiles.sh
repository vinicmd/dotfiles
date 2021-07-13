#!/bin/bash
echo off
clear
sudo su
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
echo -e "\nInstalando pacotes"
sudo apt update
sudo apt install curl wget fonts-jetbrains-mono zsh tilix git apt-transport-https code -y

echo "Zsh definido como principal"
sudo usermod --shell $(which zsh) $USER
clear

echo "instalando oh my zsh e pacotes do zsh"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo -e "\n\nFinalizado. Abra a segunda parte."