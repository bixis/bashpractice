#!/bin/bash
# This script counts the files inside the specified directory.

function usage {
	echo "./$(basename $0) -h --> shows usage"
}

# This are the flags expected in the input
optstring=":t:h"

#This handles the flags and inputs
while getopts $optstring options; do
	case $options in
		h) 	
			usage;;
		t) 	
			TARGET_DIR=$OPTARG;;
		:) 
			echo "Must supply the directory path in which you want to count the files"
			echo "For example:"
		   	echo "$basename $0 t ../exampleDir"
		   	exit 1;;
	   	?)
			echo "Invalid option -${OPTARG}"
			exit 2;;

	esac
done

echo `ls ${TARGET_DIR} | wc -l`
exit 0

