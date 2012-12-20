#!/bin/bash
#Author: Shawn Nguyen
#quick and dirty script to connect to a network in ArchLinux

echo "Which network would you like to connect to?"
networks=$(cat /etc/conf.d/netcfg | grep 'NETWORKS=')

#displaying only network profiles
networks="$(sed "s/NETWORKS=(//g; s/@//g; s/)//g" <<< $networks)"
IFS=" " read -a network_array <<< "$networks"

#prompt which network to connect to
count=1
for i in "${network_array[@]}"; do
	echo -e "$((count++)). $i"
done

read -p "Please enter the network #: " networknum
if [ $networknum -lt 1 ] || [ $networknum -gt ${#network_array[@]} ]; then
	echo "Invalid number."
	exit 1
fi 

sudo ip link set wlan0 up
sudo netcfg "${network_array[networknum-1]}" -u 
