#!/usr/bin/bash

ping -c1 $1 &> /dev/null
if [ $? -eq 0 ]; then
    echo "ping $1 success."
else
    echo "ping $1 failed."
fi
