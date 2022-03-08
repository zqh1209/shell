#!/usr/bin/bash

fun() {
	read -p "enter num: " num
	echo $(( 2*$num ))
}

result=`fun`
echo $result
