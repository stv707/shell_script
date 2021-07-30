#!/bin/bash 

echo  "$1" > /tmp/file.$$   2>/tmp/file0.$$

grep "#"  /tmp/file.$$   > /dev/null 

if [ $? -eq 1 ]
then
    echo "Required i.e. $1#"
else
    echo "Symbol # is Not required"    
fi    

rm -f /tmp/file.$$
rm -f /tmp/file0.$$
