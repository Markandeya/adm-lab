#!/bin/bash

filename=$1
count=1

echo "Enter the range of lines to print"
read min
read max

while read line; do
if [[ $count > $min && $count < $max ]]
then
	echo $line
fi

count=$(( $count + 1 ))
done < $filename

