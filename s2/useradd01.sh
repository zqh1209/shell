#!/usr/bin/bash

read -p "Please input number: " num
read -p "Please input prefix: " prefix

for i in `seq 1 $num`
do
    user=$prefix$i
    sudo useradd $user
    echo "$user:123" | sudo chpasswd 
    if [ $? -eq 0 ]; then
        echo "$user is created."
    fi
done
