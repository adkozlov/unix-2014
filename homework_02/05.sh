#!/bin/bash
if [[ $# -ne 2 ]]
then
    echo "usage: <n> - number of passwords to be generated, <m> - length of each one"
    exit 1
fi

tr -cd '[:alnum:]' < /dev/urandom | fold -w $2 | head -n $1
