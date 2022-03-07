#!/usr/bin/bash

while read user
do
    id $user &> /dev/null
    if [ $? -eq 0 ]; then
		    echo "$user already exists."
    else
        sudo useradd $user
        if [ $? -eq 0 ]; then
            echo "$user has been created."
        fi
    fi
done < user1.txt
