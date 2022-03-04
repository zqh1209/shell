#!/usr/bin/bash
#if [ $UID -ne 0 ]; then
if [ $USER != "root" ]; then
    echo "Permission denied!" 
    exit
fi

apt install -y httpd
