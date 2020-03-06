#!/bin/bash

echo "Enter a string"

read str

strlen=${#str}

echo $strlen

equality=true

for (( i=0, j=$strlen-1; i<=$strlen && j>=0; i++, j-- ))
do
	if [ ${str:i:1} != ${str:j:1} ]
	then
		equality=false
		break	
	fi
done

if [ $equality == true ]
then
	echo "Its a palindrome"
else
	echo "Its not a palindrome"
fi
