#!/usr/bin/bash
read -p "Please input the username: " user
id $user &> /dev/null
if [ $? -eq 0 ] ; then
    echo "User $user  already exists."
else
    sudo useradd $user
    if [ $? -eq 0 ]; then
        echo "User $user created successfully"
    fi
fi
