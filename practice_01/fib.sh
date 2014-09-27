#!/bin/bash
if [ $# -ne 1 ]
then
    echo "input exactly one n"
fi

fib[0]=0
fib[1]=1

for i in $( seq 2 $1 )
do
    fib[$i]=$((fib[$((i - 1))]+fib[$((i - 2))]))
done


echo ${fib[*]}
