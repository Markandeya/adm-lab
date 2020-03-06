#!/bin/bash

echo "Enter three numbers"

read num1
read num2
read num3

if [ $num1 -ge $num2 ] && [ $num1 -ge $num3 ] 
then
	echo "$num1 is greatest"

elif [ $num2 -ge $num1 ] && [ $num2 -ge $num3 ] 
then
	echo "$num2 is greatest"

else	
	echo "$num3 is greatest"

fi
