#!/usr/bin/python3 


import crypt

print(crypt.crypt("password", crypt.mksalt(crypt.METHOD_SHA512)))
print ("Hello") 
