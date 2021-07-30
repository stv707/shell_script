#!/bin/bash

. mysql_

$LOGMYSQL  <<MY_QUERY
use testdb;

desc Authors;

MY_QUERY

