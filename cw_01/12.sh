#!/bin/bash
if [[ $# -ne 1 ]]
then
	echo "usage: <filename> -- file to be coded"
	exit 1
fi

for i in `cat $1 | od -An -t dC | tr ' ' '\n' | grep -E -e '^.+$'`
do
	j=$((i + 1))
	printf "\x$(printf %x $j)"
done