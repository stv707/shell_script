#!/bin/bash 

#install oracle db 12c slim as container
podman images | grep oradb &> /dev/null
if [ $? -ne 0 ] 
then
	echo "Image missing, downloading...."
	podman pull docker.io/stv707/oradb:12slim || exit 22

fi 

podman run -d -it --rm --name oracle-db-12c -p 8080:8080  -p 1521:1521 stv707/oradb:12slim

#install clienttool - sqlplus
if [ ! -f /usr/bin/yum-config-manager ] 
then
	yum install yum-utils -y &> /dev/null 
fi 


if [ ! -f /etc/yum.repos.d/yum.oracle.com_repo_OracleLinux_OL8_oracle_instantclient21_x86_64_.repo ] 
then
yum-config-manager --add-repo  https://yum.oracle.com/repo/OracleLinux/OL8/oracle/instantclient21/x86_64/  &> /dev/null 
fi 

grep gpgcheck /etc/yum.repos.d/yum.oracle.com_repo_OracleLinux_OL8_oracle_instantclient21_x86_64_.repo &> /dev/null 
if [ $? -ne 0 ] 
then 
	echo "gpgcheck=0" >> /etc/yum.repos.d/yum.repos.d/yum.oracle.com_repo_OracleLinux_OL8_oracle_instantclient21_x86_64_.repo
fi 
yum makecache &> /dev/null 

[ -f /usr/bin/sqlplus ] || yum install oracle-instantclient-sqlplus-21.1.0.0.0-1.x86_64 -y &> /dev/null  

until podman  logs oracle-db-12c | grep 'The database is ready for use' &> /dev/null 
do
	echo "waiting for OraDB to be ready..$(date)"
	echo "we will wait for 1 min..."
	sleep 60 
done 

echo "OraDB is ready...."

## Setup oradb with user and tables with data for app 
echo "Setting up oradb....." 
sleep 30

sqlplus sys/Oradoc_db1@localhost:1521/ORCLPDB1.localdomain as sysdba <<EOF
set serveroutput off;
create user bob identified by Pa55word default tablespace system temporary tablespace temp; 
grant ALL PRIVILEGES to bob;
EOF

sqlplus  bob/Pa55word@localhost/ORCLPDB1.localdomain <<EOF
CREATE TABLE myphone ( id INT NOT NULL, name VARCHAR(100) NOT NULL, model VARCHAR(255) NOT NULL, color VARCHAR(255) NOT NULL, quantity number );
EOF

sqlplus  bob/Pa55word@localhost/ORCLPDB1.localdomain <<EOF
create sequence myphone_id_seq start with 1 increment by 1;
create or replace trigger myphone_insert
before insert on myphone
for each row
begin
  select myphone_id_seq.nextval into :new.id from dual;
  end; 
EOF

sqlplus  bob/Pa55word@localhost/ORCLPDB1.localdomain <<EOF
INSERT INTO myphone VALUES(0, 'iphone', '12x', 'red', 20); 
INSERT INTO myphone VALUES(0, 'iphone', '8plus', 'black', 60); 
INSERT INTO myphone VALUES(0, 'iphone', '7', 'white', 50); 
EOF

echo "OraDB is fully ready...." 

echo "##################################################################"
echo 
echo "login string: sqlplus  bob/Pa55word@localhost/ORCLPDB1.localdomain" 
echo 
echo "##################################################################"


echo "login string: sqlplus  bob/Pa55word@localhost/ORCLPDB1.localdomain" > ora_login.txt 
