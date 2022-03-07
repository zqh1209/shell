#!/usr/bin/bash

for i in {2..254}
do
    {
    ip=192.168.46.$i
    ping -c1 -W1 $ip &> /dev/null
    if [ $? -eq 0 ]; then
        echo "$ip"
    fi
    }&
done
wait
echo "finish..."
