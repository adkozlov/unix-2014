#!/bin/bash
if [[ $# -ne 1 ]]
then
    echo "usage: <citates> -- file with citates"
    exit 1
fi

author=`sed -e '1!d' $1`
n=$(($RANDOM % `sed -e '2!d' $1`))
TAB=$'\t'

cat $1 | tr '\n' '\t' | egrep -e "\* ${n}\\t[^\*]+" -o | sed -E -e "s/^[^${TAB}]+${TAB}(.*)/\1${author}/" | tr '\t' '\n'