#!/bin/bash
#Author: Steven
#Date: 29-July-2021
#Usage: function demo
#Version: 1.0 
#Changelog: 

# Lib Source
source /usr/local/lib/shlib.sh 

## main body ##


hello 

echo "testing source lib"
echo 
date
whoami 

for i in {1..10}
do
	echo "loop $i"
done

bye
