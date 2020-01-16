#! /bin/bash

echo "Welcome to Rename All Files Script"
# say "Welcome to Rename All Files Script"

for i in {1..5}; do
	touch "${i}file.txt" 
done

for i in {1..3}; do
	touch "myfile${i}.jpg" 
done

echo "Createing files..."
sleep 0.6
ls -lah
echo ""

###############################

choice=""
while [ "$choice" != "t" -a "$choice" != "j" ]; do
	echo "To rename .jpg file press j, to rename .txt press t:"
	read choice
	echo "You typed $choice"
done

read -p "Write the prefix to add to these files : " pref
echo "the prefix is $pref"

if [ "$choice" == "t" ]; then
	for element_t in *.txt
	do
		mv ${element_t} ${pref}${element_t}  
		# echo "t= ${element_t}"
	done
else 
	for element_j in *.jpg
	do
		mv ${element_j} ${pref}${element_j}  
		# echo "j= ${element_j}"
	done
fi

ls -lah