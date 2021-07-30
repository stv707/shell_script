#!/bin/bash

mysql -u bob -ppass123 -h 127.0.0.1 -P 3306 <<MY_QUERY
use testdb;

CREATE TABLE Authors(Id INT PRIMARY KEY AUTO_INCREMENT, Name VARCHAR(25));

MY_QUERY
