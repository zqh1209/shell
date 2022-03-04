#!/usr/bin/bash
read -p "Please input a number: " num

while true
do
    if [[ "$num" =~ ^[0-9]+$ ]]; then
        break
    else
        echo "error number!"
        read -p "Not a number, please input a number: " num
    fi
done
