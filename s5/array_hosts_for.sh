#!/usr/bin/bash
IFS=$'\n'

for line in `cat /etc/hosts`
do
	hosts[i++]=$line
done < /etc/hosts


for i in ${!hosts[@]}
do
	echo "$i: ${hosts[i]}"
done

echo ${#hosts[@]}
