mv ~/.zshrc ~/.zshrc_bkp
mv ~/.gitconfig ~/.gitconfig_bkp

ln -s -f arch/.zshrc /home/$USER/
ln -s -f arch/.gitconfig /home/$USER/
