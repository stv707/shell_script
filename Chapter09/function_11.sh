#!/bin/bash
# We will define variable temp for sharing data with function
temp="/tmp/filename"




remove_file()
{
echo "removing file $temp..."
}

check_dir()
{

if [ -d $temp ] 
then
	echo "$temp exist" 
else
	echo "$temp not in path"
	temp=/new/dir
	return 1 
fi 

}




echo "temp var is: $temp" 

#check_dir && remove_file  
remove_file  

echo "the new value of temp is: $temp" 

echo "tq and bye" 
