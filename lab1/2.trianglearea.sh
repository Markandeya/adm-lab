#!/bin/bash

echo "Enter base and height of triangle"

read base
read height



echo "Area -" 
echo  " 0.5 * $base * $height" | bc 
