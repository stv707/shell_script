#!/bin/bash
rm -rf sample*
echo > sample_1
echo > sample_2
mkdir sample_3
echo > sample_4




for file in sample*
	do
		if [ -d "$file" ]
 		then
		echo "skipping directory $file"
		#break
		#exit
		continue
		fi
	echo file is $file
	done 

echo  "Testing break"
sleep 5
	
rm -rf sample*
exit 0
