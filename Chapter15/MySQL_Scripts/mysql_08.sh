#!/bin/bash
. mysql_

$LOGMYSQL  <<MY_QUERY
use testdb;

select * from Authors;

MY_QUERY
