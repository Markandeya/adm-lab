#!/bin/bash

echo "Enter a number"

read num
tmp=num

dig=0

while [ $tmp != 0 ]
do
	dig=$(($dig+1))
	tmp=$(($tmp/10))
	echo $tmp
done

if [ $num == 0 ]
then
	dig=1
fi

echo "No: of digits = $dig"
