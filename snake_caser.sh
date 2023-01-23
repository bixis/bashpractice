#!/bin/bash
# NOT WORKING - Root cause seems to be I cannot save a space to a single variable and compare every character to it.

# Using positional arguments
INPUT_STRING=$1
OUTPUT_STRING=""
SPACE=" " # Looks like bash does not like this as a variable. It does not read as a string.  
UNDERCASE="_"
for CHAR in $INPUT_STRING; do
    if [ $CHAR == $SPACE ]; then
        OUTPUT_STRING+=UNDERCASE
    else 
        OUTPUT_STRING+=$CHAR
    fi
done
echo $OUTPUT_STRING
