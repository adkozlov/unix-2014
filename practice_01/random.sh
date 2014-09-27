#!/bin/bash
n=$1
m=$2

for i in $( seq $n )
do
    name=`echo input$i`
    touch $name

    for j in $( seq $m)
    do
        echo $RANDOM >> $name
    done
done
