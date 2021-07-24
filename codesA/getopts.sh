#!/bin/bash
#Purpose: Getopts Examples working with arguments
#Version:1.0
#Modified Date:
#WebSite: http://steven.com.my
#Author: Steven
# START #

while getopts :a:b: options; do
        case $options in
                a) ap=$OPTARG;;
                b) bo=$OPTARG;;
                ?) echo "I Dont know What is $OPTARG is"
        esac
done

echo "Option A = $ap and Option B = $bo"

# END #
