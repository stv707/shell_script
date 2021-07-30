#!/bin/bash 



function genpass() 
{ 

/usr/bin/python3 - <<EOF
import crypt 
print(crypt.crypt("$1", crypt.mksalt(crypt.METHOD_SHA512)))
EOF

} 

function run_perl() 
{ 
perl - <<EOF
print "Hello PERL TEST";
EOF



} 



echo -e "Enter passwors to generate:\c"
read RES

PASS=$(genpass $RES) 


echo "Python Crypt pass is: $PASS"

echo 
echo  "running perl function"
run_perl
