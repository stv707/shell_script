#!/bin/bash
mysql -uroot -pPa55word1234 -h 127.0.0.1 -P 3306 <<MY_QUERY

CREATE USER 'bob'@'%' IDENTIFIED BY 'pass123';
CREATE USER 'bob'@'localhost' IDENTIFIED BY 'pass123';
GRANT ALL ON testdb.* TO 'bob'@'%';
GRANT ALL ON testdb.* TO 'bob'@'localhost';

select user from mysql.user;
FLUSH PRIVILEGES; 
MY_QUERY

