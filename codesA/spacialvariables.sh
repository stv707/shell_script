#!/bin/bash
#Purpose: To learn special variables
#Version:1.0
#Website: http://steven.com.my
#Modified Date:
#Author: Steven
# START #
echo "'$*' output is $*"
echo "'$#' output is $#"
echo "'$1 & $2' output $1 and $2"
echo "'$@' output of $@"
echo "'$?' output is $?"
echo "'$$' output is $$"
sleep 400 &
echo "'$!' output is $!"

echo "'$0' your current program name is $0"

# END #
