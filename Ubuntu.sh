#!/bin/bash
zshrc="/home/$USER/.zshrc"
p10k="/home/$USER/.p10k.zsh"

script1ubuntu="./Ubuntu/script1.sh"
script2ubuntu="./Ubuntu/script2.sh"

source $script1ubuntu

source $script2ubuntu
