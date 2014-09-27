#!/bin/bash
if [[ $# -ne 1 ]]
then
    echo "usage: <archive_name> - name of archive"
    exit 1
fi

ext=${1##*.}

case $ext in
    "zip")
        unzip -l $1 ;;
    "tar" | "gz" | "bz2")
        tar -tf $1 ;;
    *)
        echo "unsupported archive format" ;;
esac
