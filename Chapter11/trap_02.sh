#!/bin/bash
trap 'goexit'  SIGINT
trap "echo caught signal SIGQUIT" 3
trap "echo caught signal SIGTERM" 15
trap "echo caught signal SIGTSTP" TSTP


function goexit() 
{
 echo "we gonna stop the script..."
 echo "cleaning up....."
 echo "rolling back...."
 exit
}




echo "Enter any string (type 'bye' to exit)."
while true
do
echo -e "Rolling...\c"
read string
if [ "$string" = "bye" ]
then
break
fi
done
echo "Exiting normally"
