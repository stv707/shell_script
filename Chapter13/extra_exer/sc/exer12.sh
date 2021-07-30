#!/bin/bash
exec 2> /dev/null
typeset -a NAM
typeset -a UN
while true 
do 
trap 'continue' INT QUIT 
echo -e "Enter FirstName & LastName:\c"
read VAR1 VAR2

if [ -z $VAR1 ] 
 then 
 echo "FirstName is missing" 
 exit 
 elif [ -z $VAR2 ] 
 then 
 echo "LastName is missing" 
 exit 
 else 
 echo 
fi 

NAM[0]=$VAR1
NAM[1]=$VAR2 

UN[0]=`echo ${NAM[0]} | tr '[A-Z]' '[a-z]'` 
UN[1]=`echo ${NAM[1]} | tr '[A-Z]' '[a-z]'` 

NAM=${UN[0]:0:3}${UN[1]:0:2}

while true 
do
trap 'continue' INT QUIT 
echo -e "Your username in the system will be: $NAM (okay? y/n)[ ]\b\b\c" 
read ANS
if [ $ANS == "y" ] 
then 
break
else 
 if [ $ANS == "n" ] 
 then 
 exit 
 fi 
fi 
done
 
 cut -d: -f1 /etc/passwd | grep ^$NAM &> /dev/null 
 if [  $? -ne 0 ] 
  then 
  echo "Adding $NAM ....." 
  echo "Done..."
  #useradd  $NAM &> /dev/null 
  # Just simulate adding user....
  exit
  else 
  echo "UserName $NAM already in the system" 
  exit
 fi 
done 
