#!/bin/bash
head -c $(stat -c%s $1) $1 >> $1
