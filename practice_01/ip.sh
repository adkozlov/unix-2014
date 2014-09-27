#!/bin/bash
cat ip.txt | grep `ifconfig | grep "inet.*broadcast" | sed -E "s/.*inet (([0-9]{1,3}\.){3}([0-9]{1,3})).*/\1/"` | wc -l
