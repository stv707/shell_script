#!/bin/bash
#Purpose: Set assigns its arguments to the positional parameters
#Version:1.0
#website: http://steven.com.my
#Modified Date:
#Author: Steven
# START #
set `date`
echo "Today is $1"
echo "Month is $2"
echo "Date is $3"
echo "Time H:M:S $4"
echo "TimeZone is $5"
echo "Year is $6"
set -x
# END #
