#! /bin/bash


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


echo "----------------END----------------"

