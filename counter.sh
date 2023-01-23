#!/usr/bin/env bash

COUNTER=1
USER_INPUT=$1

while [ $COUNTER -le $USER_INPUT ]
do
    echo "COUNTER IS $COUNTER"
    COUNTER=$((COUNTER+1))
done

