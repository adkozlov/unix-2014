#!/bin/bash
if [[ $# -ne 1 ]]
then
	echo "usage: <string> -- some text"
	exit 1
fi

reversed=`echo $1 | rev`

i=0
count=-1
pattern=""

for string in `echo $1 | tr ' ' '\n' | sort | uniq -c | egrep -e '\b1\b' -v`
do
	if [[ $((i % 2)) == 0 ]]
	then
		count=$string
	else
		pattern=`echo $string | rev`

		j=2
		while [[ $j -le $count ]]
		do
			reversed=`echo $reversed | sed -E -e "s/(^|[^\*])(${pattern})([^\*])/\1*\2*\3/"`
			j=$((j + 1))
		done
	fi

	i=$((i + 1))
done

echo $reversed | rev