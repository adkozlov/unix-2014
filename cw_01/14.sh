#!/bin/bash
if [[ $# -ne 1 ]]
then
	echo "usage: <number> -- calculates sin of this number"
	exit 1
fi

N=10
SCALE=5

result=$1
power=$1
fac=1
for i in $(seq 1 $N)
do
	power=`echo "scale=$SCALE;$power * (-1) * $1 * $1" | bc -l`
	fac=`echo "scale=$SCALE;$fac * (2 * $i) * (2 * $i + 1)" | bc -l`

	result=`echo "scale=$SCALE;$result + $power / $fac" | bc -l`
done

echo $result