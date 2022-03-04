#!/usr/bin/bash
site=www.baidu.com
ping -c1 $site &> /dev/null
if [ $? -eq 0 ]; then
    echo "ping $site success."
else
    echo "ping $site failed."
fi
