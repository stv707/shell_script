#!/bin/bash


mysql -u root -pPa55word1234 -h 127.0.0.1 -P 3306 <<MY_QUERY

SELECT VERSION();
SHOW DATABASES; 

MY_QUERY

