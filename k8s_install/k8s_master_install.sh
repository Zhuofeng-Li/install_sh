#!/bin/bash
sudo hostnamectl set-hostname k8s-master
for file in `ls .`;
do
	chmod +x  $file
done
./prepare.sh
./admin.sh
sudo ./images.sh
./master.sh
kubectl apply -f flannel.yaml