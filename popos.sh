sudo apt update && sudo apt upgrade -y

cd ~

sudo apt install tilix zsh flatpak htop exa bat docker wget curl copyq  

flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

chsh -s $(which zsh)

mkdir -p /home/$USER/Projects
mkdir -p /home/$USER/Estudos
mkdir -p /home/$USER/tmp

mkdir -p /home/$USER/.fonts
cd /home/$USER/.fonts

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf 

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf 

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf 

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf 

cd ~

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash

# cd /home/$USER/tmp
# git clone https://github.com/vinceliuice/Colloid-gtk-theme /home/$USER/tmp/Colloid-gtk-theme
# git clone https://github.com/vinceliuice/Colloid-icon-theme /home/$USER/tmp/Colloid-icon-theme
# git clone https://github.com/refi64/stylepak /home/$USER/tmp/stylepak

# cd /home/$USER/tmp/Colloid-gtk-theme
# ./install.sh --tweaks normal

# cd /home/$USER/tmp/stylepak
# ./stylepak install-user Colloid-Dark

# cd /home/$USER/tmp/Colloid-icon-theme
# ./install.sh

# rm -Rf ~/yay
# rm -Rf ~/tmp

# git clone https://aur.archlinux.org/asdf-vm.git && cd asdf-vm && makepkg -si

curl -sS https://starship.rs/install.sh | sh

starship preset nerd-font-symbols -o ~/.config/starship.toml

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

if [ -e ~/.zshrc ]; then
    rm ~/.zshrc
fi


gh auth login

ln -s ~/dotfiles/popos/.zshrc ~/.zshrc
ln -s ~/dotfiles/popos/.gitconfig ~/.gitconfig
