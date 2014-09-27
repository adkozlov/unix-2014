#!/bin/bash
cat phones.txt | grep -E "^\+7[0-9]{10}$"
