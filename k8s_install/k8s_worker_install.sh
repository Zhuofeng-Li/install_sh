#!/bin/bash
for file in `ls .`;
do
	chmod +x  $file
done
./prepare.sh
./admin.sh
sudo ./images.sh
