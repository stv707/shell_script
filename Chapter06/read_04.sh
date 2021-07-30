#!/bin/bash
echo -n "Name few cities? "
read -a cities
echo -e "are you sure with the answer(y/n)[ ]\b\b\c" 
read ANS
echo "Name of city is ${cities[2]}."
