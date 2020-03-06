#!/bin/bash

echo "Enter array size"

read size

i=0

while [ $i -lt $size ]
do
	read arr[$i]
	i=$(( $i + 1 ))
done

echo "Enter the number to insert"

read num

echo "Enter the position at which to insert"

read pos


i=$(( $size + 1 ))

#shifting elements
while [ $i -gt $pos ]
do
	previndex=$(( $i - 1 ))
	arr[$i]=${arr[$previndex]}
	i=$(( $i - 1 ))
done

#insert number at position
arr[$pos]=$num


echo "Array after insertion"

#displaying array
echo ${arr[*]}
