#!/bin/bash
#Purpose: If statement example
#Version:1.0
#Modified Date:
#Author: Steven
# START #
echo -e "Please provide Value below ten: \c"
read -r value

if [ $value -le 10 ]
then
echo "You provided value is $value"
touch /tmp/test{1..100}.txt
echo "Script completed successfully"
fi

# END #
