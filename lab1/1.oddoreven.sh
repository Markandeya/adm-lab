#!/bin/bash

#Odd or Even

echo "Enter a number"

read num

if [ $(( num % 2 )) == 0 ]
then
	echo "Its even"
else
	echo "Its odd"
fi
