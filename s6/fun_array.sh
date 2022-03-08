#!/usr/bin/bash

num=(1 2 3 4 5)
#echo "${num[@]}"

array() {
	local fact=1
	for i in "$@"
	do
		fact=$(( $fact * $i ))
	done
	echo $fact
}

array ${num[@]}
