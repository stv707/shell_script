#!/bin/bash

. ora_

$ORA <<MY_QUERY
set serveroutput on;

select * from Writers;
MY_QUERY
