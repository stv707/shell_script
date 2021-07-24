#!/bin/bash
#Purpose: Shifting positional parameters automatically
#Version:1.0
#Website: http://steven.com.my
#Modified Date:
#Author: Steven
# START #
set `date`
echo "Count $#"
echo "$1 $2 $3 $4 $5"
shift 2
echo "$1 $2 $3 $4 $5"
# END #
