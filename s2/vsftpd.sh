#!/usr/bin/bash
red="\e[1;31m"
green="\e[1;32m"
end="\e[0m"

systemctl is-active vsftpd.service &> /dev/null
if [ $? -eq 0 ]; then
    vsftpd_addr=`sudo ss -anpl | grep vsftpd | awk '{print $5}' | awk -F":" '{print $1}'`
    vsftpd_port=`sudo ss -anpl | grep vsftpd | awk '{print $5}' | awk -F":" '{print $2}'`
    vsftpd_pid=`sudo ss -anpl | grep vsftpd | awk '{print $7}' | cut -d "," -f 2 | cut -d "=" -f 2`
    echo -e "${green}vsftpd server started!${end}"
    echo -e "${green}The address that vsftpd listens on is:${end} ${red}${vsftpd_addr}${end}"
    echo -e "${green}The port that vsftpd listens on is:${end} ${red}${vsftpd_port}${end}"
    echo -e "${green}The process PID of vsftpd is:${end} ${red}${vsftpd_pid}${end}"
fi
