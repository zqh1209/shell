#!/usr/bin/bash

read -p "Please enter a new password: " pass
>ok.txt
>ping_fail.txt
for ip in `cat ip.txt`
do
    {
        ping -c1 -W1 $ip &> /dev/null
        if [ $? -eq 0 ]; then
            ssh $ip "echo $pass | sudo passwd --stdin root"
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
