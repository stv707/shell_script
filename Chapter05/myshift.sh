#!/bin/bash
#Author: Steven
#Date: 27-July-2021
#Usage: myshift
#Version: 1.0 
#Changelog: 







echo "Total Arg passwd is $#" 

X=1 
Z=$#

while [ $Z -ge $X ] 
do
	echo "$1"
	shift
	let X=$X+1
done
