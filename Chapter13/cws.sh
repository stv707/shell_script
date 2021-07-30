#!/bin/bash
#Author: Steven
#Date: 30-July-2021
#Usage: webserver
#Version: 1.0 
#Changelog: 

# Lib Source

## main body ##


yum install httpd  -y 

firewall-cmd --permanent --add-service=http
firewall-cmd --reload

cp -r ./extra_exer/*   /var/www/html 

systemctl restart httpd 

sleep 3 

firefox http://127.0.0.1 & 
