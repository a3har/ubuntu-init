#!bin/bash

# Fixing the broken wifi issue 

# sudo su
# cd /lib/firmware/ath10k/QCA6174/hw3.0/
# git clone https://github.com/kvalo/ath10k-firmware.git

# mv ./board-2.bin ./board-2.bin.bak
# cp ./ath10k-firmware/QCA6174/hw3.0/board-2.bin ./board-2.bin

# mv ./firmware-6.bin ./firmware-6.bin.bak
# cp ./ath10k-firmware/QCA6174/hw3.0/4.4.1/firmware-6.bin_WLAN.RM.4.4.1-00128-QCARMSWPZ-1 ./firmware-6.bin

# rm -rf ./ath10k-firmware


sudo apt update && sudo apt upgrade
sudo apt install curl wget -y

# Installing docker

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Installing docker-compose 

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Installing Bash Completion for docker
sudo apt-get install bash-completion -y
sudo curl \
    -L https://raw.githubusercontent.com/docker/compose/1.29.2/contrib/completion/bash/docker-compose \
    -o /etc/bash_completion.d/docker-compose

# Adding user to docker group

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

# Installing VS Code

sudo snap install code --classic

# Installing Chrome

sudo snap install brave-browser

# Installing git

sudo apt install git -y

# Git config

git config --global user.email "azharmuham13@hotmail.com"
git config --global user.name "Muhammad Azhar"

# Other important stuff

sudo apt install net-tools gnome-tweaks -y

# Installing node 

sudo apt-get install nodejs-dev node-gyp libssl1.0-dev npm -y

# Installing slack

sudo snap install slack --classic

# Installing postman

sudo snap install postman

# Installing spotify

sudo snap install spotify

# Install virtualenv 

sudo apt install python3-virtualenv