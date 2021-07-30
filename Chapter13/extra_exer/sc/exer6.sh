#!/bin/bash 

if [ $# -ne 1 ]
then
    echo "Usage: $0   number"
    echo "       I will find reverse of given number"
    echo "       For eg. $0 123, I will print 321"
    exit 1
fi

n=$1
rev=0
sd=0

while [ $n -gt 0 ]
do
   #echo 
   #echo "before sd" $sd  
    sd=`expr $n % 10`
   #echo "after sd" $sd 
   #echo "before rev" $rev 
    rev=`expr $rev \* 10  + $sd`
   # echo "after rev" $rev 
   # echo "before n" $n 
    n=`expr $n / 10`
   # echo "after n" $n
done
    echo  "Reverse number is $rev"

