#!/bin/bash -x
sudo apt-get update
sudo apt-get install libltdl7
wget https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/arm64/docker-ce_18.06.1~ce~3-0~ubuntu_arm64.deb
sudo dpkg -i docker-ce_18.06.1~ce~3-0~ubuntu_arm64.deb
sudo usermod -aG docker ubuntu
newgrp docker
echo "docker installed"