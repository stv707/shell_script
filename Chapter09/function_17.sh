#!/bin/bash

#Global Variable


#Function 

dobackup()

{
sleep 20 
#echo "Started backup"
tar -cf ./home.tar /home >/dev/null 2>& 1
#echo "Completed backup"
}

# main body 

dobackup &

echo -n "Task...done."
echo
