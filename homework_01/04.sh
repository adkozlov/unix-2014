#!/bin/bash
ps aux | tr -s " " | cut -d " " -f 11- | grep "^r"
