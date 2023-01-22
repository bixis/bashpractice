#!/bin/bash
# This script makes multiple txt files from a list provided via -l flag

function usage {
	echo -e "usage: ./$(basename $0) -l 'element1 element2 element3'"
	echo -e "Above command creates 3 files: \n - element1.txt \n - element2.txt \n - element3.txt"
}

# This are the flags expected in the input
optstring=":l:h"

#This handles the flags and inputs
while getopts $optstring options; do
	case $options in
		h) 	
			usage;;
		l) 	
			LIST=$OPTARG;;
		:) 
			echo "Must supply a string with the names of the txt files you want to create"
			echo "For example:"
		   	echo "$basename $0 -l "gitignore readme notes todo""
		   	exit 1;;
	   	?)
			echo "Invalid option -${OPTARG}"
			exit 2;;

	esac
done

# Iterates list and makes files
for FILE in $LIST
do
	touch $FILE".txt"
done
exit 0
