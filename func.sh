#!/usr/bin/env bash

function Hello() {
    LNAME=$1
    echo "Hello $LNAME"
}

function Goodbye() {
    echo "Goodbye $1"
}

echo "Calling the Hello function"
Hello Bob

echo "Calling the Goodbye function"
Goodbye Robert

exit 0