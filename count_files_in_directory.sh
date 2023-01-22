#!/bin/bash
# This script counts the files inside the specified directory.

function usage {
	echo "usage: ./$(basename $0) -t ~/Desktop"
	echo -e "Above command will output the number of files located in the target directory"
	echo "Please keep in mind that using this script without the -t flag will cause a wrong count"
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
