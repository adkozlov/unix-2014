#!/bin/bash
if [[ $# -ne 1 ]]
then
    echo "usage: <n> - number"
    exit 1
fi

function fib {
    if [[ $1 == 0 || $1 == 1 ]]
    then
        echo "1"
    else
        a=`expr $1 - 1`
        b=`expr $1 - 2`
        echo "$(expr $($0 $a) + $($0 $b))"
    fi
}

fib $1
