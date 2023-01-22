#!/bin/bash

# Write a command that executes ifconfig and redirects standard output and
# appends it to a file named ipaddress.txt

function usage {
    echo "usage"
}

optstring=":n:"

while getopts $optstring; do
    case $options in
        h)
            usage;; 
        n)
            NET=$OPTARG;;
        :) 
			echo "Must supply -n"
		   	exit 1;;
        ?)
			echo "Invalid option -${OPTARG}"
			exit 2;;
    esac
done

ifconfig >> ipaddress.txt
exit 0