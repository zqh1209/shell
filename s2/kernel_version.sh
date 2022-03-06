#!/usr/bin/bash

main=`uname -r | awk -F"." '{print $1}'`
minor=`uname -r | awk -F"." '{print $2}'`
if [ "$main" -eq 3 -a "$minor" -ge 10 ]; then
    echo "true."
else 
    echo "false."
fi
