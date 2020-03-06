#!/bin/bash

echo "Enter the filename"

if [ -e $filename ]
then
	echo "File exists"
fi
if [ -r $filename ]
then
	echo "File is readable"
fi
if [ -w $filename ]
then
	echo "File is writable"
fi
if [ -x $filename ]
then
	echo "File is executable"
fi
