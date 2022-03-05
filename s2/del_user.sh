#!/usr/bin/bash

read -p "Please input a username: " user

id $user &> /dev/null
if [ $? -ne 0 ]; then
    echo -e "No such user: \e[1;31m$user\e[0m"
    exit 1
fi

read -p "Are you sure?[y/n]: " action
#if [ "$action" = "y" -o "$action" = "Y" ]; then
#    sudo userdel -r $user
#    echo -e "\e[1;32m$user has been deleted.\e[0m"
#fi

case "$action" in
y|Y|yes|Yes|YES)
    sudo userdel -r $user
    echo -e "\e[1;32m$user has been deleted.\e[0m"
    ;;
*)
    ;;
esac
