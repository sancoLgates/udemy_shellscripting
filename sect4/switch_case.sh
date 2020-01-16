#! /bin/bash

echo "type a character: "
read char

case $char in
	# [1-3] | [5-7])
	# 	echo " you type 1-3 OR 5-7"
	# 	;;
	"hello")
		echo " You type hello"
		;;
	*".txt")
		echo " This is a txt file"
		;;
	[0-9])
		echo " you type 0-9"
		;;
	1[2-8])
		echo " you type 12-18"
		;;
	[a-z])
		echo " you type a-z"
		;;
	[A-Z])
		echo " you type A-Z"
		;;
	1)
		echo " You type 1"
		;;
	2)
		echo " You Type 2"
		;;
	*) echo " Default Else $char"

esac