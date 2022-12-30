#!/bin/bash

echo "Start Shell update"
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common lsb-release

