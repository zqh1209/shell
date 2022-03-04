#!/usr/bin/bash
mem_used=`free -m | grep ^Mem | awk '{print $3}'`
mem_total=`free -m | grep ^Mem | awk '{print $2}'`
mem_percent=$((mem_used*100/mem_total))

echo "mem used: $mem_percent%"
