#!/bin/bash
#Script to bring up network (wireless interface)

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

sudo ip link set wlan0 up
sudo netcfg "${network_array[networknum-1]}" -u 
