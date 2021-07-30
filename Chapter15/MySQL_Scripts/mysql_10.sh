#!/bin/bash

. mysql_

$LOGMYSQL <<MY_QUERY
use testdb;

DELETE FROM Authors WHERE Name = 'Mansi Joshi';

select * from Authors;

MY_QUERY
