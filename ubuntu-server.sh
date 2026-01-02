#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update
sudo apt install -y samba docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

#Docker
sudo groupadd docker
sudo usermod -aG docker $USER

sudo systemctl enable --now docker

#Samba
sudo mkdir -p /srv/public/Movies 
sudo mkdir -p /srv/public/Series
sudo chmod 777 /srv/public
sudo smbpasswd -a vinicius
sudo chown -R vinicius:vinicius /srv/public
mv /etc/samba/smb.conf /etc/samba/smb.conf.bak
cp ~/dotfiles/UbuntuServer/smb.conf /etc/samba/
sudo systemctl restart smbd

#Jellyfin
docker pull jellyfin/jellyfin
docker volume create jellyfin-config
docker volume create jellyfin-cache

docker run -d \
 --name=jellyfin \
 -e PUID=1000 \
 -e PGID=1000 \
 -e TZ=Etc/UTC \
 -p 8096:8096/tcp \
 -p 7359:7359/udp \
 --volume jellyfin-config:/config \
 --volume jellyfin-cache:/cache \
 --mount type=bind,source=/srv/public,target=/media \
 --restart=unless-stopped \
 jellyfin/jellyfin

echo "Finished!"