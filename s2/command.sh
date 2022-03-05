#!/usr/bin/bash

command1=lls

if command -v $command1 &> /dev/null; then
    :
else
    echo "$command1: command not found."
fi

