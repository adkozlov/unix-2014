#!/bin/bash
cat ip.txt | xargs -n 1 ping -c 5 > res.txt 2> err.txt
