#!/bin/bash
city=red
if grep "$city" color_file &> /dev/null 
then
:
else
echo "Color is not found in color_file "
exit 1
fi



