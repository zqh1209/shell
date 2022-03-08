#!/usr/bin/bash

factorial() {
	factorial=1
	for((i=1;i<=$1;i++))
	do
		factorial=$(( $factorial * $i ))
	done
	echo $factorial
}

factorial $1
