#!/bin/bash

echo 'Start install Docker'
sudo apt update
sudo apt install net-tools -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmour -o /etc/apt/trusted.gpg.d/docker.gpg
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" -y
sudo apt update
sudo apt install docker-ce -y
sudo usermod -aG docker ${USER}
newgrp docker
sudo systemctl status docker
sudo systemctl enable docker