#!/usr/bin/env bash


function GetFiles() {
    FILES=`ls -1 | sort -r | head -10`

}

function ShowFiles() {
    local COUNTER=1
    for FILE in $@
    do
        echo "FILE #$COUNTER = $FILE"
        ((COUNTER++))
    done
}

GetFiles
ShowFiles $FILES
exit 0