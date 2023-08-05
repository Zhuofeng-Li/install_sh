#!/bin/bash
hostnamectl set-hostname k8s-worker0
for file in `ls .`;
do
	chmod +x  $file
done
sudo ./docker_install.sh
./prepare.sh
./admin.sh
sudo ./images.sh
