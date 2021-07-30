#!/bin/bash

. ora_

$ORA <<MY_QUERY

set serveroutput on;

drop table Writers;
select * from Writers;

MY_QUERY
