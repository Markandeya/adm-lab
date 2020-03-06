#!/bin/bash

echo "Enter a number"

read num

fact=1

while [ $num != 0 ] 
do

	fact=$(( $fact * $num ))
	num=$(( $num - 1 ))
done

echo "Factorial = $fact"
