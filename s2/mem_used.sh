#!/usr/bin/bash
mem_used=`free -m | grep '^Mem' | awk '{print $3}'`
mem_total=`free -m | grep '^Mem' | awk '{print $2}'`
mem_percent=$((mem_used*100/mem_total))
war_file=/tmp/mem_war.txt

if [ $mem_percent -ge 80 ]; then
    echo "`date '+%F %T'` memmory:${mem_percent}%" >> $war_file
fi
