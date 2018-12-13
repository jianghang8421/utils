#!/bin/bash -x
echo "====================================="
echo "Install Kubectl"
echo "====================================="
sudo apt-get update && sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl
echo "kubectl installed"


echo "====================================="
echo "Install Docker stable"
echo "====================================="
sudo apt-get install libltdl7
wget https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/arm64/docker-ce_18.06.1~ce~3-0~ubuntu_arm64.deb
sudo dpkg -i docker-ce_18.06.1~ce~3-0~ubuntu_arm64.deb
sudo usermod -aG docker ubuntu
echo "docker installed"