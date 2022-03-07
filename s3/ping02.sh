#!/usr/bin/bash

for site in `cat site.txt`
do
    ping -c1 $site &> /dev/null
    if [ $? -eq 0 ]; then
        echo "ping $site success."
    else
        echo "failed."
    fi
done
