#!/bin/bash
echo -n "Commands in bin directory are : $var"


for var in $(ls )
do
echo -n -e "$var "
done 
# no error if "done" is typed instead of "do"
