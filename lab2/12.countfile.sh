#!/bin/bash

filename=$1
linecount=0

while read line; do
#echo $line
linecount=$(( $linecount + 1 ))
done < $filename

echo "Line count: " $linecount

text=`cat $filename`
textlen=${#text}

echo "Length of text: $textlen"

wordcount=0
splchars=0
digcount=0
alphacount=0

if [[ $textlen>0 ]]
then
	wordcount=1
fi

space=' '
comma=','
newline=$'\n'
question='?'

for (( i=0; i <= textlen; i++ ))
do
	if [[ ${text:i:1} == $space ]]
	then
		if [[ ${text:i+1:1} != $space ]]
		then
			wordcount=$(( $wordcount + 1 ))
		fi	
	
	elif [[ ${text:i:1} == $newline ]]
	then
		if [[ ${text:i+1:1} != $newline ]]
		then
			wordcount=$(( $wordcount + 1 ))
		fi
	fi
	
	#special chars count

	
	var=`echo ${text:i:1} | grep [%@#$]`
	
	if [[ ${#var} != 0 ]]
	then
		splchars=$(( $splchars + 1 ))
	fi
	
	#digit count

	
	var=`echo ${text:i:1} | grep [0-9]`
	
	if [[ ${#var} != 0 ]]
	then
		digcount=$(( $digcount + 1 ))
	fi

	
	#alphabet count

	
	var=`echo ${text:i:1} | grep [a-Z]`
	
	if [[ ${#var} != 0 ]]
	then
		alphacount=$(( $alphacount + 1 ))
	fi

done

echo "Word count: " $wordcount
echo "Special chars count: " $splchars
echo "Digits count: " $digcount
echo "Alphabet count: " $alphacount

