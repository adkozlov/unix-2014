#!/bin/bash
egrep -e '^[ \t]*#[ \t]*include' file.c | sed -E -e 's/.*(<(.+)>|"(.+)")/\2\3/'
