#!/bin/bash

echo "****-Starting-****"

echo "Entering root mode..."

sudo -i

airmon-ng

read -p "enter you wifi interface that you will use: (wlan0,wlan1,..etc)" wifiInterface

$mon="mon"

ip link set $wifiInterface down

ip link set $wifiInterface name $wifiInterface+$mon 

echo "Exiting root mode..."

exit

