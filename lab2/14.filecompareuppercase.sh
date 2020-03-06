#!/bin/bash

file1=$1
file2=$2

text1=`cat $file1`
text2=`cat $file2`

if [[ $text1 == $text2 ]]
then
	text2=`echo $text2 | rev`
	echo $text2 > $file2
	echo "File 2:" $text2
else
	echo ${text1^^} > $file1
	echo "File 1:" $text1
fi
