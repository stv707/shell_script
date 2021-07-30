#!/bin/bash
USA="Usage: $0 x y"
USB="Where x and y are two no's for which I will print the sum" 


if [ $# -ne 2 ]
then
    echo $USA 
    echo $USB 
    exit 1
fi

    echo "Sum of $1 and $2 is `expr $1 + $2`"
