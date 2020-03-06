#!/bin/bash

echo "Enter a number"
read num


noofdig()
{
	tmp=$1

	dig=0

	while [ $tmp != 0 ]
	do
		dig=$(($dig+1))
		tmp=$(($tmp/10))
	
	done
	return $dig
}

checkarmstrong()
{
	`noofdig $1`
	pow=$?
	
	tmp=$1
	sum=0

	while [ $tmp != 0 ]
	do
		dig=$(( $tmp % 10 ))
		sum=$( echo "$sum + $dig ^ $pow" | bc )
		tmp=$(( $tmp / 10 ))		
	done
	


	if [ $1 == $sum ]
	then
		echo "Its Armstrong"
	else
		echo "Its not Armstrong"
	fi
}

checkarmstrong $num
