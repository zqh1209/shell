#!/usr/bin/bash

while read line
do
	if [ ${#line} -eq 0 ]; then
		continue
	fi
    user=`echo $line | awk '{print $1}'`
    pass=`echo $line | awk '{print $2}'`
    id $user &> /dev/null
    if [ $? -eq 0 ]; then
		    echo "$user already exists."
    else
        sudo useradd $user
        echo "$user:$pass" | sudo chpasswd 
        if [ $? -eq 0 ]; then
            echo "$user has been created."
        fi
    fi
done < user1.txt
