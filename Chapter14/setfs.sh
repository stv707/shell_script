#!/bin/bash
#Author: Steven
#Date: 30-July-2021
#Usage: set rsync_ssh server
#Version: 1.0 
#Changelog: 

# Lib Source

## main body ##

podman run \
    --name rsync-server \ 
    -p 8000:873 \ 
    -p 9000:2222 \ 
    -e USERNAME=user \ 
    -e PASSWORD=pass \ 
    -v /your/public.key:/root/.ssh/authorized_keys \ 
    axiom/rsync-server


