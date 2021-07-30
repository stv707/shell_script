#!/bin/bash
for var in user{11..20}
do
userdel -r $var
#passwd -d $var
done
