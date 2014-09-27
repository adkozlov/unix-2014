#!/bin/bash
if [[ $# -ne 1 ]]
then
    echo "usage: <groupname> - name of group"
    exit 1
fi

members $1 | tr " " "\n" | wc -l
