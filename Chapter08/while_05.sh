#!/bin/bash
count=1
num=1
while [ $count -le $1 ]
  do
   echo $num
   num=`expr $num + 1`
   count=`expr $count + 1`
  done
