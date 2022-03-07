#!/usr/bin/bash

num=5

tmp_fifofile=/tmp/$$.fifo
mkfifo $tmp_fifofile
exec 8<> $tmp_fifofile
rm -rf $tmp_fifofile

for i in `seq $num`
do
	echo >&8
done

for i in {1..254}
do
    {
		read -u 8
        ip=192.168.46.$i
        ping -c1 -W1 $ip &> /dev/null
        if [ $? -eq 0 ]; then
            echo "ping $ip success."
	else
	    echo "ping $ip failed."
        fi
		echo >&8
    }&
done
wait

exec 8>&-
echo "finish..."
