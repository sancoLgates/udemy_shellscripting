#! /bin/bash


#while
num1=1

while [[ $num1 -le 15 ]]; do
	echo "number is $num1"
	num1=$(( num1 + 2 ))
	sleep 0.5
done


