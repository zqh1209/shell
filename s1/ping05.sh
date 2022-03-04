#!/usr/bin/bash
read -p "Please input a site: " site

ping -c1 $site &> /dev/null
if [ $? -eq 0 ]; then
    echo "ping $site success."
else
    echo "ping $site failed."
fi
