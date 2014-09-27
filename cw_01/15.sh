#!/bin/bash
if [[ $# -le 1 ]]
then
	echo "usage: [--prefix <prefix>] [--suffix <suffix>] [--number <number>] <mask> -- rename files"
	exit 1
fi

prefix=`echo $@ | sed -E -e 's/.*--prefix[ ]+([^ ]+).*/\1/'`
suffix=`echo $@ | sed -E -e 's/.*--suffix[ ]+([^ ]+).*/\1/'`
number=`echo $@ | sed -E -e 's/.*--number[ ]+([^ ]+).*/\1/'`
mask=`echo "${@: -1}"`

i=0
for f in `find . -name "$mask"`
do
	cp $f `echo $prefix$(($i + $number))$suffix.${f##*.}`
	
	i=$((i + 1))
done