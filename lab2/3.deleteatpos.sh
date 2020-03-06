#!/bin/bash

echo "Enter array size"

read size

i=0

while [ $i -lt $size ]
do
	read arr[$i]
	i=$(( $i + 1 ))
done

echo "Enter the position to delete"

read pos


i=$pos

#shifting elements
while [ $i -lt $size ]
do
	nextindex=$(( $i + 1 ))
	arr[$i]=${arr[$nextindex]}
	i=$(( $i + 1 ))
done



echo "Array after deletion"

#displaying array
echo ${arr[*]}
