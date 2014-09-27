#!/bin/bash
for f in *
do
	if test -L "$f"
	then
		echo "$f is a symlink"
	else
		echo "$f is a regular file"
	fi
done