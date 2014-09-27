#!/bin/bash
/sbin/ifconfig | sed -E -e '/((25[0-5]|2[0-4][[:digit:]]|[[:digit:]]?[[:digit:]]?[[:digit:]])\.){3}(25[0-5]|2[0-4][[:digit:]]|[[:digit:]]?[[:digit:]]?[[:digit:]])/s/[[:digit:]]/x/g' | sed -e 's/^$/----------------/'
