#!/bin/bash
arr=( "$@" )
n=$#
n=`expr $n - 1`
for ((i=0; i<$n; i++))
do
	for ((j=0; j<$n; j++))
	do
		x=`expr $j + 1`
		if [ ${arr[$j]} -gt ${arr[$x]} ]
		then
			temp=${arr[$j]}
			arr[$j]=${arr[$x]}
			arr[$x]=$temp
		fi
	done
done

echo ${arr[*]}
