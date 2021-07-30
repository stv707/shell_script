#!/bin/bash
#Author: Steven
#Date: 26-July-2021
#Usage: timedemo
#Version: 1.0 
#Changelog: 

date 

if [ ! -d /tmp/$USER ] 
then 
	mkdir /tmp/$USER
fi 


for i in {1..5}
do
	touch /tmp/${USER}/file_$(date +%H%m)_$i.txt
	echo "this task ran at $(date)" >> /tmp/${USER}/file_$(date +%H%m)_$i.txt
done
#v2
