#!/bin/bash


USAGE="usage: $0 -x -y <arg> -z"


if [ $# -lt 1 ] 
then 
	echo $USAGE
	exit 12
fi 


while getopts :xy:z opt_char

do
	case $opt_char in
	x)
		echo "running cal"
		cal 
		;;
	y)
		echo "running cal with option"
		cal $OPTARG
		;;
	z)	
		echo "running date command"
		date
		;; 
	*)
		#echo "$OPTARG is not a valid option."
		echo "$USAGE"
		;;
	esac
done
