#!/bin/bash
if [[ $# -ne 2 ]]
then
    echo "usage: <csv_file> -- phone book filename, <html_file> -- HTML page filename"
    exit 1
fi

cat $1 | sed -E -e 's/^(.*)$/<tr><td>\1<\/td><\/tr>/' |\
sed -E -e 's/, /<\/td><td>/g' |\
sed -E -e '1 i \
<html><head><title>Address Book<\/title><\/head><body><table border=1>' |\
sed -E -e '$ a \
<\/body><\/html>' > $2
