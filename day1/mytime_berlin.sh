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


touch /tmp/${USER}/file_$(date +%d_%H_%M)_${USER}_berlin.txt
echo "this task ran at $(date)" >> /tmp/${USER}/file_$(date +%d_%H_%M)_${USER}_berlin.txt
#v2
