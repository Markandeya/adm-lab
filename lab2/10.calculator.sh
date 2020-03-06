#!/bin/bash


repeat="y"

while [ $repeat == "y" ]
do
	echo "Enter 2 numbers"
	read num1
	read num2
	
	echo "Choose an option (+, -, *, /)"	
	read opt	

	case $opt in

	+) echo $(( num1+num2 ));;
	-) echo $(( num1-num2 ));;
	/) echo $(( num1/num2 ));;
	*) echo $(( num1*num2 ));;	

	esac
	
	echo "Press y to continue/ any other key to exit"
	read repeat
done
