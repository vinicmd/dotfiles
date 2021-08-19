zshrc="/home/$USER/.zshrc"
p10k="/home/$USER/.p10k.zsh"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

mkdir /home/$USER/.fonts
cd /home/$USER/.fonts

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf 

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf 

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf 

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf 

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

if [ -f $zshrc]
then
    mv /home/$USER/.zshrc /home/$USER/.zshrc.bkp

    cp ../.zshrc /home/$USER/
else 
    cp ../.zshrc /home/$USER/
fi

if [ -f $p10k]
then
    mv /home/$USER/.p10k.zsh /home/$USER/.p10k.zsh.bkp
    cp ../.p10k.zsh /home/$USER/
else 
    cp ../.p10k.zsh /home/$USER/
fi

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash