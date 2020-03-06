#!/bin/bash

echo "Enter a year"

read year

if [ $(( $year%400 )) == 0 ]
then
	echo "Its a Leap Year"
elif [ $(( $year%100 )) == 0 ]
then
	echo "Its NOT a Leap Year"
elif [ $(( $year%4 )) == 0 ]
then
	echo "Its a Leap Year"
else
	echo "Its NOT a Leap Year"
fi
