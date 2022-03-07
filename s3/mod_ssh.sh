#!/usr/bin/bash

for ip in `cat ip.txt`
do
    {
        ping -c1 -W1 $ip &> /dev/null
        if [ $? -eq 0 ]; then
            ssh $ip "sudo sed -i 's/GSSAPIAuthentication yes/GSSAPIAuthentication no/g' /etc/ssh/ssh_config"
            if [ $? -eq 0 ]; then
                echo "$ip" >> ok.txt
            fi
        else
            echo "$ip" >> ping_fail.txt
        fi
    }&
done
wait
echo "finish..."
