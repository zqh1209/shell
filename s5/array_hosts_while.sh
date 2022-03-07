#!/usr/bin/bash

while read line
do
	if [ ${#line} -ne 0 ]; then
		hosts[i++]=$line
	fi
done < /etc/hosts

echo "first: ${hosts[0]}"


for i in ${!hosts[@]}
do
	echo "$i: ${hosts[$i]}"
done

echo ${#hosts[@]}
