#!/bin/bash
if [[ $# < 1 || $1 == "-?" || $1 == "-help" ]]
then
    echo "usage: <file_mask> -- mask of files to be removed"
    echo "example: ./08.sh -v \"*.txt\" -- remove all txt files"
    exit 0
fi

if [[ $1 == "-v" ]]
then
    for f in $2
    do
        rm -rf $f
    done

    exit 0
fi

for f in $1
do
    echo "rm -rf "$f
    echo "are you sure? (y)"

    read -s -n 1 key
    if [[ $key == "y" ]]
    then
        rm -rf $f
    fi
done
