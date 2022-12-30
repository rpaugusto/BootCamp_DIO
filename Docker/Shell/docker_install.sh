#!/bin/bash

echo "Start Shell update"
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common lsb-release

echo 'Start install Docker'

curl -fsSL https://get.docker.com | sudo bash
sudo curl -fsSL "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo usermod -aG docker vagrant

echo 'Docker Compose'
sudo apt-get install docker-compose -y


#EOF