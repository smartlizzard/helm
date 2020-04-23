#!/bin/bash
apt-get update
apt-get upgrade -y
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
apt-get update
apt-get install -y kubelet kubeadm
systemctl enable docker && systemctl start docker
systemctl daemon-reload
systemctl restart kubelet
systemctl enable kubelet && systemctl start kubelet
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
wget https://get.helm.sh/helm-v3.2.0-linux-amd64.tar.gz
tar -zxvf helm-v3.2.0-linux-amd64.tar.gz
mv linux-amd64/helm /usr/local/bin/helm
/bin/mkdir /home/ubuntu/.kube
helm repo add stable https://kubernetes-charts.storage.googleapis.com/