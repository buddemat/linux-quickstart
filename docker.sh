#!/usr/bin/env bash

# The .deb package `docker` is not docker but some tray applet! https://stackoverflow.com/questions/30379381/docker-command-not-found-even-though-installed-with-apt-get
# !! DO NOT do !!: sudo apt-get install docker -y

# uninstall old versions if present
sudo apt-get remove docker docker-engine docker.io containerd runc

# install pre-requisites
sudo apt-get install ca-certificates curl gnupg lsb-release -y

#sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common


# add Docker’s official GPG key:
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# set up the repository
if [[ $(lsb_release -is) == 'Linuxmint' ]]; then
    # get ubuntu code name on mint
    UBUNTU_CODENAME=$(sed -n -e 's/^UBUNTU_CODENAME=\(.*\)/\1/p' /etc/os-release)
else
    UBUNTU_CODENAME=$(lsb_release -cs)
fi

# path should be 
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $UBUNTU_CODENAME stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(. /etc/os-release; echo "$UBUNTU_CODENAME") stable"

# install docker from the repository
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# create and add user to group
sudo groupadd docker
sudo usermod -aG docker ${USER}

