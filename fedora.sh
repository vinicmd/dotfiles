#!/bin/bash
sudo dnf update -y

sudo dnf groupinstall "Development Tools" "Development Libraries" -y
sudo dnf install dnf5-plugins -y
sudo dnf config-manager addrepo --from-repofile=https://cli.github.com/packages/rpm/gh-cli.repo
sudo dnf install rustup wget curl cmake gcc zsh -y
sudo dnf install gh --repo gh-cli -y

curl https://sh.rustup.rs -sSf | sh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

curl -sS https://starship.rs/install.sh | sh

starship preset nerd-font-symbols -o ~/.config/starship.toml

if [ -e ~/.zshrc ]; then
    rm ~/.zshrc
fi

ln -s ~/dotfiles/Fedora/.zshrc ~/.zshrc
ln -s ~/dotfiles/Fedora/.gitconfig ~/.gitconfig

gh auth login

chsh -s /bin/zsh


cargo install bat exa

nvm install --lts

echo "Finished!"