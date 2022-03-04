#!/usr/bin/bash
site=www.baidu.com
if ping -c1 $site &> /dev/null; then
    echo "ping $site success."
else
    echo "ping $site failed."
fi
