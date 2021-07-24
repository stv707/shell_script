#!/bin/bash
#Purpose: eval command Evaluating twice
#Version:1.0
#Modified Date:
#WebSite: http://steven.com.my
#Author: Steven
# START #

echo "enter the a vloue $a"
read a
echo "enter the b volue $b"
read b
if test "$a" -gt "$b" ; then
        echo "$a is greater than $b"
else
echo "$b is greater than $a"
fi

# END #