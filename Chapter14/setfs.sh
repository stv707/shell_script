#!/bin/bash
#Author: Steven
#Date: 30-July-2021
#Usage: set rsync_ssh server
#Version: 1.0 
#Changelog: 

# Lib Source

## main body ##

# Set POublic Key


podman images | grep rsync &> /dev/null  
if [ $? -ne 0 ] 
then 
	echo "rsync container not found"
	wget $(cat url.txt) 
	podman load < rsync.tar 
	echo "rerun the script"
	exit 33
fi 


if [ !  -d /dat ] 
then
mkdir /dat
chmod 777 /dat/
fi 

if [ -f /root/.ssh/id_rsa.pub ] 
then
cp /root/.ssh/id_rsa.pub /dat/
else 
	echo "pub key not found - exit"
	exit 22
fi 


podman run -d -it --rm  --name rsync-server  -p 8000:873 -p 9000:22 -e USERNAME=user -e PASSWORD=pass -e ALLOW="10.0.0.0/8 127.0.0.1/32" \
       	-v /dat/id_rsa.pub:/root/.ssh/authorized_keys axiom/rsync-server



echo "podman login info: rsync -av -e "ssh -i /root/.ssh/id_rsa -p 9000 -l root" /your/folder/ localhost:/data  "
