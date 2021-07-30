#!/bin/bash
. ora_
$ORA <<MY_QUERY
set serveroutput on;

DELETE FROM Writers WHERE Name = 'demoname';

select * from Writers;
MY_QUERY
