#!/usr/bin/bash

fun() {
	read -p "enter num: " num
	return $(( 2*$num ))
}

fun
echo $?
