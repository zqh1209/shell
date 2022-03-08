#!/usr/bin/bash

num=(1 2 3)
array() {		
	#echo "$@"
	local newarray=()
	local i
	for i in $@
	do
		newarray[j++]=$(( $i * 5 ))
	done
	echo "${newarray[@]}"
}

result=`array ${num[@]}`
echo ${result[@]}
