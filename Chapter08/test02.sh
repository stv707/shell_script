#!/bin/bash


function check()
{
	[ -z $1 ] && echo "no input" && exit 32
} 


echo "Enter First name"
read name1
check $name1 

echo "Enter Second name"
read name2
check $name2



[ $name1 = $name2 ] # Check equality of two names
echo $?
[ -n $name2 ] # Check String Length is greater than Zero
echo $?
