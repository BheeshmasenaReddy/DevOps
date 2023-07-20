#!/bin/bash

function isFileExists(){
    local file="$1"
    
    [[ -f "$file" ]] && return 0 || return 1 
}


if  (isFileExists "$1")
then
    echo "$1 File Found"
else
    echo "$1 File Not Found"

fi