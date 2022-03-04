#!/usr/bin/bash

if [ $# -eq 0 ]; then
    echo "usage: `basename $0` <file>"
    exit
fi

if [ ! -f $1 ]; then
    echo "$1 not a file!"
    exit
fi

for site in `cat $1`
do
    ping -c1 $site &> /dev/null
    if [ $? -eq 0 ]; then
        sleep 1
        echo "pnig $site success."
    else
        sleep 1
        echo "pnig $site failed."
    fi    
done
