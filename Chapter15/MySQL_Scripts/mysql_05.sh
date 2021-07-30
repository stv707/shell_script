#!/bin/bash



mysql -u bob -ppass123 -h 127.0.0.1 -P 3306 <<MY_QUERY
use testdb;

show tables;

MY_QUERY
