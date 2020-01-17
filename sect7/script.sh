#! /bin/bash

f=$(find ../ -type d)

for i in $f;
do
	echo "this is the folder: $i"

	for myfile in $i/*;
	do
		echo "The file inside is = $myfile"
	done
	echo "-----------------"
	echo "    "
done