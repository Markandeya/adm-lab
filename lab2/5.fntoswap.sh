#!/bin/bash

echo "Enter 2 numbers"
read num1
read num2

echo "num1 is " $num1 ", num2 is " $num2

swapper()
{
	tmp=$(( $1 ))
	echo $tmp
	$1=$(( $2 ))
	$2=$tmp
}

swapper num1 num2

echo "num1 is " $num1 ", num2 is " $num2
