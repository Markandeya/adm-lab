#!/bin/bash

echo "Enter a number"

read num

summ=0

while [ $num != 0 ]
do
	summ=$(( $summ + ($num % 10) ))
	num=$(( $num/10 ))
done


echo "Sum: $summ "
