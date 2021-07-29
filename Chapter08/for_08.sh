#!/bin/bash
for filename in *.sh
do
echo "Copying $filename to $filename.bak"
cp $filename $filename.bak
done
