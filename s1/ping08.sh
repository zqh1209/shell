#!/usr/bin/bash
site=qq.com
for i in {1..5}
do
    ping -c1 $site &> /dev/null
    if [ $? -eq 0 ]; then
        echo "ping $site success."
    fi
done

i=1
while [ $i -le 5 ]
do 
    ping -c1 $site &> /dev/null
    if [ $? -eq 0 ]; then
        echo "ping $site success."
    fi
    let i++
    # let ++i
done
