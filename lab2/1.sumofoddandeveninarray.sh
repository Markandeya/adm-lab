#!/bin/bash

echo "Enter the size of the array"

read n

i=0
evenSum=0
oddSum=0


while [ $i -lt $n ]
do
	read a[$i]
	if [ $(( a[$i] % 2)) == 0 ]
	then
		evenSum=$(( $evenSum + ${a[$i]} ))
	else
		oddSum=$(( $oddSum + ${a[$i]} ))
	fi
	i=$(($i+1))
done

echo "Odd sum: " $oddSum ", Even sum: " $evenSum


