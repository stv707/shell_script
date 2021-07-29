#!/bin/bash
#Author: Steven
#Date: 30-July-2021
#Usage: Setup mysql DB
#Version: 1.0 
#Changelog: 

# Lib Source

## main body ##

# Install mysql client 

yum install mysql -y &> /dev/null 

podman images | grep mysql &> /dev/null 
if [ $? -ne 0 ] 
then 
	echo "Mysql images missing... halt"
	exit 22
fi 

podman ps -a | grep mysql57 &> /dev/null 
if [ $? -eq 0 ] 
then 
	echo "Mysql cont seems registered"
	exit 23
else
	podman run -d -it --rm --name 'mysql57' -p 3306:3306 -e MYSQL_ROOT_PASSWORD=Pa55word1234 mysql:5.7  
fi 

until podman logs mysql57 | grep 'mysqld: ready for connections' 
do
	echo "waiting for MysqlDB to be ready..$(date)"
        echo "we will wait for 1 min..."
      	sleep 60
done

echo "Mysql is ready...."

echo "##############################################################"
echo
echo "login string: mysql -uroot -pPa55word1234 -h 127.0.0.1 -P 3306"
echo
echo "##############################################################"

echo "login string: mysql -uroot -pPa55word1234 -h 127.0.0.1 -P 3306" > mysql_login.txt 
