#!/bin/bash
hostnamectl set-hostname k8s-master
for file in `ls .`;
do
	chmod +x  $file
done
sudo ./docker_install.sh
./prepare.sh
./admin.sh
sudo ./images.sh
./master.sh
kubectl apply -f kube-flannel.yml