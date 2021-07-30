#!/bin/bash
. mysql_

$LOGMYSQL <<MY_QUERY
use testdb;

DROP TABLE Authors;

MY_QUERY

