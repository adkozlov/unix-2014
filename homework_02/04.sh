#!/bin/bash
if [[ -z "$BASH" ]]
then
    echo "Use bash!"
else
    if [[ "$USER" != "root" ]]
    then
        echo "Hi, "$USER"!"
    else
        echo "OMG, root!"
    fi
fi
