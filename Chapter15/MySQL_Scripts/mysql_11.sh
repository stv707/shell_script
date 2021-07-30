#!/bin/bash



. mysql_

$LOGMYSQL <<MY_QUERY
use testdb;

ALTER TABLE Authors
ADD ADDRESS VARCHAR(25);

MY_QUERY
