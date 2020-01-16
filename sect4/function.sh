#! /bin/bash

mydate(){
	#$1 first param
	#$2 second param
	echo $1 $2
	date

	return 90
}

myFunctiono(){
	local var1="Eggs"
	var2="Salad"

	echo "my Var inside the func is: $var1"
}

fizzbuzz(){
	for (( i = 1; i <= 30; i++ )); do
		res=""
		if [[ $(( $i%3 )) == 0 ]]; then
			 res=${res}"fizz"
		fi
		if [[ $(( $i%5 )) == 0 ]]; then
			res=${res}"buzz"
		fi

		if [[ -z $res ]]; then
			echo $i
		else
			echo $res
		fi
	done
}

totalFiles(){
	local number=0
	# for item in ./*.txt
	for item in ./*
	do
		number=$(( number+1 ))
	done
	echo "Total files $number"
}

echo "----------START----------"

mydate "danu" 123
echo "return value of func mydate $?"


myFunctiono
fizzbuzz
totalFiles

echo "Outside the func : $var1"
echo "Outside the func : $var2"

echo "----------END----------"
