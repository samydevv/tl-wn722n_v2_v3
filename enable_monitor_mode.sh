#!/bin/bash

echo "****-Starting installation-****"

echo "installing bc.."

sudo apt-get install bc

echo "upgrading bc.."

sudo apt-get upgrade bc

echo "installing linux-headers.."

sudo apt-get install linux-headers-amd64

sudo apt-get install bc -y

sudo apt update -y   

sudo apt upgrade -y   

echo "installing dkms.."

sudo apt-get install dkms

echo "installing the required dependences"

sudo apt-get install libwacom-common

git clone https://github.com/aircrack-ng/rtl8188eus

cd rt18188eus

sudo -i

echo 'blacklist r8188eu' | sudo tee -a '/etc/modprobe.d/realtek.conf'

exit

make && sudo make install

echo "****-Finishing installation-****"

echo "---------------------------------"
echo "you can now use wifite or aircrack-ng on tplink tl-wn722n v2/v3"
echo "if you want to use it in fern wifi crack check the fern_wn722n.sh in the repo"
echo "---------------------------------"

echo "****-Rebooting System-****"

sudo reboot


