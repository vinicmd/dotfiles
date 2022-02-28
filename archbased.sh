echo off
sudo pacman-mirrors -c Brazil
sudo pacman -Syyuu

sudo pacman -S base-devel git && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

yay -S microsoft-edge-stable visual-studio-code-bin jdk11-openjdk tilix flatpak htop exa bat docker wget curl 

flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

mkdir -p ~/Projects
mkdir -p ~/Estudos
mkdir -p /home/$USER/.config/tilix/schemes

mkdir /home/$USER/.fonts
cd /home/$USER/.fonts

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf 

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf 

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf 

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf 

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"

git config --global user.name 'Vinicius Duarte'
git config --global user.email viniciusduarte@outlook.com

echo '##### ALIAS #####' >> ~/.zshrc
echo alias ls='exa --icons' >> ~/.zshrc
echo alias l=ls -la >> ~/.zshrc

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

git clone https://aur.archlinux.org/asdf-vm.git && cd asdf-vm && makepkg -si

echo '##### ASDF #####' >> ~/.zshrc
echo '. /opt/asdf-vm/asdf.sh' >> ~/.zshrc
