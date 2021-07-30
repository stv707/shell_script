#!/bin/bash

. mysql_

$LOGMYSQL  <<MY_QUERY

DROP DATABASE testdb;

MY_QUERY

