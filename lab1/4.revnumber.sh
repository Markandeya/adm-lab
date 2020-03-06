#!/bin/bash

echo "Enter a number"

read num

rev=0

while [ $num != 0 ]
do
	rev=$(( ($rev * 10) + ($num % 10) ))
	num=$(( $num/10 ))
done


echo "Reverse: $rev "
