#!/bin/bash
hostnamectl set-hostname k8s-worker0
for file in `ls .`;
do
	chmod +x  $file
done
./prepare.sh
./admin.sh
sudo ./images.sh
