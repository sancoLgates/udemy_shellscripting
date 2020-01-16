#! /bin/bash

a="hello"
b="yesterday"

echo "${a}_ss$b"

echo 'value $a'
echo "value $a"

exit

#for loops

for (( i = 0; i < 3; i++ )); do
	echo "first ${i}"
done

for j in {1..5}
do
	echo "second ${j}"
done

for d in {1,"dog","danger","hello",-99} #dont put whitespace after comma's
do
	echo "the value is: $d "
	# if [ $d == "danger" ]; then
	# 	echo "STOP LOOPs"
	# 	break
	# fi
done

for file in ./*
do
	echo "name of the file is:  $file"
	echo "ext: ${file##*\.}"
	if [[ "$file" == *.txt ]]; then
		echo " it's the txt files"
	fi
	if [[ ${file##*\.} == "txt" ]]; then
		echo " it's the txt files"
	fi
	if [[ ${file: -4} == ".txt" ]]; then
		echo " it's the txt files"
	fi
done

echo "we continue"
exit


# 3 == 3       3 -eq 3
# 3 != 3       3 -ne 3
# 3 > 3       3 -gt 3
# 3 < 3       3 -lt 3
# 3 >= 3       3 -ge 3
# 3 <= 3       3 -le 3
# OR			-o
# AND			-a

echo "----------------START----------------"
echo "hello ..."

read -p "3 + 3 = " enam

if [[ -z $enam ]]; then
	echo "empty string !"
	exit
fi

# if [[ ${enam} -le 0 ]]; then
if [ ${enam} -lt 0 -o ${enam} -eq 0 ]; then
	echo "you cannot have negative value"
	exit
fi

if [ 6 -eq ${enam} ]; then
	echo "yes 3+3 = "${enam}
else
	echo "no 3+3 != " ${enam}
fi

if [ ${enam} -gt 3 ]; then
	echo "${enam} greater than 3"
elif [ ${enam} -lt 3 ]; then
	echo "${enam} lower than 3"
else
	echo "${enam} = 3"
fi

read -sp "Type the password to know the file name: " password

if [[ -z $password ]]; then
	echo "empty string !"
	exit
fi

if [ $password == "password" ]; then
	echo "Correct! the filename is: file.txt"
else
	echo "incorrect"
fi


# cond check if file EXIST
myfile=new.txt
myfile2=new22.txt
myfile3=newfolder

if [[ -e $myfile ]]; then
	echo "$myfile EXIST"
fi

#NEGATE COND
if [[ ! -e $myfile2 ]]; then
	echo "$myfile2 Does Not EXIST"
fi

# check if its directory
if [[ -d $myfile3 ]]; then
	echo "$myfile3 is directory"
fi

# check if a file is readable, writeable, executeable, not empty, a regular file
if [[ -r $myfile ]]; then
	echo "$myfile is readable"
fi

if [[ -w $myfile ]]; then
	echo "$myfile is writeable"
fi

if [[ -x $myfile ]]; then
	echo "$myfile is executable"
fi

if [[ -s $myfile ]]; then
	echo "$myfile is not empty"
fi

if [[ -f $myfile ]]; then
	echo "$myfile is a regular file"
fi


echo "----------------END----------------"

