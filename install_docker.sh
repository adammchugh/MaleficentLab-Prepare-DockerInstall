#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt-get install curl apt-transport-https ca-certificates software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update -y
apt-cache policy docker-ce
sudo apt install docker-ce
sudo systemctl status docker
sudo docker run hello-world
sudo usermod -aG docker $USER
logout
