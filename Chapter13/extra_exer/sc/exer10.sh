#!/bin/bash 
cls()
{
    clear
    echo "Clear screen, press a key . . ."
    read
    return
}

#
# Function to show files in current directory 
#
show_ls()
{   
    ls
    echo "list files, press a key . . ."
    read
    return
}

#
#
start_mc()
{
Y=$(date +%Y)
M=$(date +%m)    
  
 cal $M $Y 

   return
}

#
# Function to start editor 
#
start_ed()
{
    ced=$1
    if which $ced > /dev/null ; then
	$ced
	echo "$ced, Press a key . . ."
	read
    else
	echo "Error: $ced is not installed or no such application exist, Press a key . . ."
	read
    fi		
    return
}

#
# Function to print help
#
print_help_uu()
{
	   echo "Usage: $0 -c -d -m -v {application name}"; 
	   echo "Where -s clear the screen";
	   echo "      -t show dir";
	   echo "      -e show cal from current month";
	   echo "      -v {application}, start {application} of your choice";
	   return
}

#
# Main procedure start here
#
# Check for sufficent args
#

if [ $# -eq 0 ] ; then
    print_help_uu
    exit 1
fi    

#
# Now parse command line arguments
#
while getopts :stev: opt
do
    case "$opt" in
	s) cls;;
	t) show_ls;;
	e) start_mc;;
	v) thised="$OPTARG"; start_ed $thised ;;
        :) print_help_uu; exit 1;; 
	\?) print_help_uu; exit 1;; 
  
    esac
done        	   
