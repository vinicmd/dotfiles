sudo pacman-mirrors -c Brazil
sudo pacman -Syyuu

cd ~
sudo pacman -S base-devel git && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

yay -S microsoft-edge-stable visual-studio-code-bin tilix flatpak htop exa bat docker wget curl copyq github-cli ostree appstream-glib

flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

mkdir -p /home/$USER/Projects
mkdir -p /home/$USER/Estudos
mkdir -p /home/$USER/tmp

mkdir /home/$USER/.fonts
cd /home/$USER/.fonts

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf 

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf 

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf 

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf 

cd /home/$USER/

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash

cd /home/$USER/tmp
git clone https://github.com/vinceliuice/Colloid-gtk-theme
git clone https://github.com/vinceliuice/Colloid-icon-theme
git clone https://github.com/refi64/stylepak

cd /home/$USER/tmp/Colloid-gtk-theme
./install.sh --tweaks normal

cd /home/$USER/tmp/stylepak
./stylepak install-user Colloid-Dark

cd /home/$USER/tmp/Colloid-icon-theme
./install.sh

rm -Rf ~/yay
rm -Rf ~/tmp

git clone https://aur.archlinux.org/asdf-vm.git && cd asdf-vm && makepkg -si

reboot
