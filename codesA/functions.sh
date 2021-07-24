#!/bin/bash
#Purpose: Example for Functions
#Version:1.0
#Modified Date:
#WebSite: http://steven.com.my
#Author: Steven
# START #
function takebackup (){
        if [ -f $1 ]; then
        BACKUP="/tmp/$(basename ${1}).$(date +%F).$$"
        echo "Backing up $1 to ${BACKUP}"
        cp $1 $BACKUP
        fi
}

takebackup /etc/hosts
        if [ $? -eq 0 ]; then
        echo "Backup Success"
fi
# END #
