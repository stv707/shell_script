#!/bin/bash
. mysql_

$LOGMYSQL  <<MY_QUERY
use testdb;

UPDATE Authors SET Name = 'Mansi Joshi' WHERE Id = 1;
select * from Authors;

MY_QUERY
