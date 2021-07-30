#!/bin/bash


. ora_

$ORA <<MY_QUERY
set serveroutput on;

UPDATE Writers SET Name = 'demoname' WHERE Id = 101;

select * from Writers;

MY_QUERY
