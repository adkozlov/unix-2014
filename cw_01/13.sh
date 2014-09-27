#!/bin/bash
if [[ $# -ne 1 ]]
then
    echo "usage: <rss> -- rss file name"
    exit 1
fi

cat $1 | grep -E -e '<item>|<title>' | tr '\n' ' ' | grep -E -e '<item>\s*<title>[^<]*<' -o | sed -E -e 's/.*<title>([^<]*)</\1/'
