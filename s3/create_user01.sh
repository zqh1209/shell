#!/usr/bin/bash

if [ $# -eq 0 ]; then
    echo "usage: `basename $0` filename"
    exit 1
fi

if [ ! -f $1 ]; then
    echo "not a file"
    exit 2
fi

IFS=$'\n'
for line in `cat $1`
do
    user=`echo "$line" | awk '{print $1}'`
    pass=`echo "$line" | awk '{print $2}'`
    id $user $> /dev/null
    if [ $? -eq 0 ]; then
       echo "user $user already exists."
    else
        sudo useradd $user
        if [ $? -eq 0 ]; then
            echo "user $user has been created"
        fi
    fi
done
