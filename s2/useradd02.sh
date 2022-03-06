#!/usr/bin/bash

read -p "Please input number: " num
read -p "Please input prefix: " prefix


# whether it is a number
if [[ ! "$sum" =~ ^[0-9]+$ || "$sum" =~ ^0+$ ]]; then
    echo "Please input a correct number!"
    exit
fi

# whether it is a prefix
if [ -z $prefix ]; then
    echo "Please input a correct prefix!"
    exit
fi



for i in `seq 1 $num`
do
    user=$prefix$i
    sudo useradd $user
    echo "$user:123" | sudo chpasswd 
    if [ $? -eq 0 ]; then
        echo "$user is created."
    fi
done
