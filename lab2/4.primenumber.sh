#!/bin/bash

echo "Enter the limit"
read n


if [ $n -ge 2 ]
then
	echo "2"
fi


for (( i=3; i <= n; i++ ))
do
	half=$(( $i/2 ))
	flag=0
	for (( j=2; j <= half; j++ ))
	do
		if [ $(( $i % $j )) == 0 ]
		then
			flag=1
			break
		fi
	done	
	
	if [ $flag == 0 ]
	then
		echo $i
	fi
done
