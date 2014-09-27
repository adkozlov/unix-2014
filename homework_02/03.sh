#!/bin/bash
if [[ $# -ne 1 ]]
then
    echo "usage: <filename> - name of file"
    exit 1
fi

if [[ $1 =~ .*\..* ]]
then
    filename="${1%.*}"
    if [[ -z $filename ]]
    then
        echo $1
    else
        echo $filename.`echo "${1##*.}" | rev`
    fi
else
    echo $1
fi
