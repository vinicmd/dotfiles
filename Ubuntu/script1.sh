#!/bin/bash
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-beta.list'
rm -f packages.microsoft.gpg

curl -fsSL https://download.docker.com/linux/ubuntu/gpg 
sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt install apt-transport-https -y
sudo apt update
sudo apt install code git gnome-tweaks zsh tilix python3-nautilus flatpak microsoft-edge-beta docker.io curl -y
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

mkdir -p ~/Projects
mkdir -p ~/Estudos

sudo systemctl enable --now docker
sudo usermod -aG docker ${USER}
sudo chmod 777 /var/run/docker.sock

sudo usermod --shell $(which zsh) $USER

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "###############################################"
echo "########## --> That’s all folks! <-- ##########"
echo "Restart computer for you? (y/n)"
read restart_computer
if echo "$restart_computer" | grep -iq "^y" ;then
	sudo shutdown -r 0
else
	echo "Okay. Good work! :)"
fi