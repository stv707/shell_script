#!/bin/bash 
function fpass () 
{ 
echo "USER: $LOGNAME TIME: $(date +%H:%M) DATE: $(date +%d-%m-%Y) STATUS: Success"
} 

function ffail () 
{ 
echo "USER: $LOGNAME TIME: $(date +%H:%M) DATE: $(date +%d-%m-%Y) STATUS: Failed"
} 

if [ ! -d /backup ] 
 then 
 mkdir /backup/ 
fi 

cd /backup/ 
touch bc.log 

PREFIX=$(date +%d%m%Y) 

 if [ -f ./etc.$PREFIX.tar.gz ] 
 then 
 ffail >> /backup/bc.log
 else 
 tar -czf etc.$PREFIX.tar.gz  /etc &> /dev/null 
 fpass >> /backup/bc.log
 fi 
