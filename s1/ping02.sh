#!/usr/bin/bash
site="www.baidu.com"
ping -c1 $site &> /dev/null && \
    echo -e "\e[1;32mping $site success.\e[0m" || \
    echo "\e[1;31mping $site failed.\e[0m"
