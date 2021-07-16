#!/bin/bash
zshrc="/home/$USER/.zshrc"
p10k="/home/$USER/.p10k.zsh"
script1fedora="./Fedora/script1.sh"
script2fedora="./Fedora/script2.sh"

clear

echo "Digite 1 para Fedora ou 2 para Ubuntu"
read sistema

if [ $sistema -eq 1 ]
then
    source $script1fedora
    
    clear

    source $script2fedora
else
    if [ $sistema -eq 2 ]
    then
        echo deu certo Ubuntu
    else
        echo numero invalido
    fi
fi    

if [ -f $zshrc]
then
    mv /home/$USER/.zshrc /home/$USER/.zshrc.bkp

    cp ./.zshrc /home/$USER/
else 
    cp ./.zshrc /home/$USER/
fi

if [ -f $p10k]
then
    mv /home/$USER/.p10k.zsh /home/$USER/.p10k.zsh.bkp
    cp ./.p10k.zsh /home/$USER/
else 
    cp ./.p10k.zsh /home/$USER/
fi

echo "Finalizado!"