#!/usr/bin/bash

site=qq.com
until ping -c1 -W1 $site &> /dev/null
do
    sleep 1
done

echo "success."



