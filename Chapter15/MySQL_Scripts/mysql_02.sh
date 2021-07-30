#!/bin/bash
mysql -uroot -pPa55word1234 -h 127.0.0.1 -P 3306 <<MY_QUERY
create database testdb;  
FLUSH PRIVILEGES;
MY_QUERY
