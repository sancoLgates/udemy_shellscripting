#! /bin/bash

for myfile in ../*;
do
	if [ -f "$myfile" ]; then
		echo "$myfile"

		res=$(grep -ni "echo" "$myfile")
		if [ ! -z "$res" ]; then
			echo "FOUND: $res"
			cp "$myfile" .

			currentFile=$(cut -d'/' -f 2 <<< $myfile)
			echo $myfile
			echo "curr= $currentFile"
			chmod 766 "$currentFile"
			echo " " >> "$currentFile"
			echo "********" >> "$currentFile"
			echo "$res" >> "$currentFile"
		else
			echo "EMPTY!"
		fi
	else
		echo "$myfile is NOT a file.."
		echo " "
	fi
done