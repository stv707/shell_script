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
	y)       
		echo "running cal with option"
		cal $OPTARG
		;;
	x)
		echo "running cal"
		cal 
		;;
	z)	
		echo "running date command"
		date
		;; 
	*)
		#echo "$OPTARG is not a valid option."
		if [ -z $OPTARG ]
		then
			echo 'option y need arg' 
		fi 
		echo "$USAGE"
		;;
	esac
done
