#!/bin/bash
#Author: Steven
#Date: 27-July-2021
#Usage: exit demo
#Version: 1.0 
#Changelog: 


if [ $# -eq 0 ] 
then 
	echo "USAGE: $0 <username>"
	exit 45
fi




grep ^$1  /etc/passwd &> /dev/null

if [ $? -ne 0 ] 
then 
	echo "create user $1"
else
	echo "user $1 already in the system" 
fi 




