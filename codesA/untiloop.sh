#!/bin/bash
#Purpose: Until Loop Example for Host Ping
#Version:1.0
#Modified Date:
#WebSite: http://steven.com.my
#Author: Steven
# START #
echo -e "Please Enter the IP Address to Ping: \c"
read -r ip
until ping -c 3 $ip
do
        echo "Host $ip is Still Down"
        sleep 1
done

echo "Host $ip is Up Now"

# END #
