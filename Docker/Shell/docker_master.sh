#!/bin/bash

sudo docker swarm init --advertise-addr 192.168.0.100 --listen-addr=0.0.0.0:2377
sudo docker swarm join-token worker | grep docker > /vagrant/Shell/docker_worker.sh