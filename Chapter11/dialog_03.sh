#!/bin/bash
# creating the file to store password

result="output.txt"

# delete the password stored file, if program is exited pre-maturely.


trap "rm -f output.txt" 2 15


dialog --title "Password" --insecure --clear --passwordbox "Please enter password" 10 30  2> $result


reply=$?

case $reply in
	0) clear && echo "You have entered Password : $(cat $result)" ;;
	1) clear && echo "You have pressed Cancel";;
	255) clear &&  echo "Escape key is pressed.";;
esac
