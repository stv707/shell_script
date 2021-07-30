#!/bin/bash

. ora_

$ORA <<MY_QUERY
set serveroutput on;
create table Writers(Id NUMBER(5) PRIMARY KEY, Name VARCHAR(25));
MY_QUERY
