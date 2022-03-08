#!/usr/bin/bash

if [ $# -ne 3 ]; then
	echo "usage: `basename $0` para1 para2 para3"
fi

fun2() {
	echo "$(( $1 * $2 * $3 ))"
}

result=`fun2 $1 $2 $3`
echo $result
