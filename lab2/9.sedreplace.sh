#!/bin/bash

echo "Enter string to replace"
read findstr

echo "Enter string to replace with"
read repstr

echo "Enter filename"
read filename

replace()
{
	result=$( sed "s/$findstr/${repstr^^}/g" "$filename" )
	echo $result > $filename
}

replace


