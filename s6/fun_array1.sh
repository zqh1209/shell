#!/usr/bin/bash

num=(1 2 3)
array() {		
	#echo "$@"
	local newarray=($@)
	local i
	for((i=0;i<$#;i++))
	do
		newarray[$i]=$(( ${newarray[$i]} * 5 ))
	done
	echo "${newarray[@]}"
}

result=`array ${num[@]}`
echo $result
