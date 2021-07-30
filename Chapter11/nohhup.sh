#!/bin/bash
#Author: Steven
#Date: 29-July-2021
#Usage: run_nohup
#Version: 1.0 
#Changelog: 

# Lib Source
source /usr/local/lib/shlib.sh 

## main body ##



while true 
do
	echo "run ---> $(date)"  >>  /tmp/huprun.log
	sleep 5 
done


