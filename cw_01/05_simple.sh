#!/bin/bash
echo 192.168.1.{1..254} | xargs -n 1 P 0 ping -c 1 | grep "bytes from"
