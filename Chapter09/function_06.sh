#!/bin/bash


Convert_Upper() 
{
#echo $1 | tr 'abcdefghijklmnopqrstuvwxyz' 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'


echo $1 | tr [:lower:] [:upper:]
}


Convert_Upper "ganesh naik - embedded android and linux training"

echo 

Convert_Upper  $1 
