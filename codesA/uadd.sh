#!/bin/bash
#Purpose: eval command Evaluating twice
#Version:1.0
#Modified Date:
#WebSite: http://steven.com.my
#Author: Steven
# START #

echo "ecnter the user name $NM"
read NM
echo "`useradd -d /users/$NM $NM`"

# END #
