#!/bin/bash
#Purpose: eval command Evaluating twice
#Version:1.0
#Modified Date:
#WebSite: http://steven.com.my
#Author: Steven
# START #

tmp=`date | cut -c12-13`
if [ $tmp -lt 11 ] ; then
echo "Good Mornind have a nice day $USER"
elif [ $tmp -gt 11 -a $tmp -lt 16 ] ; then
echo "Good Ofter noon $USER"
elif [ $tmp -gt 15 -a $tmp -lt 19 ] ; then
echo "Good Evening $USER"
else 
echo "Good Night Sweet dreams $USER"
fi
echo "Now the time is `date |cut -c12-19`"

# END #
