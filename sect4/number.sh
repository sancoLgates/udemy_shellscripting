#! /bin/bash

num1=10
num2=20

echo " SUM $(( num1 + num2 )) "
echo "KALI $(( num1*num2))"
echo "BAGI $((num1/num2))"
echo "MODULUS $((10%3))"
echo "POWER $((3**2))"

echo "$((num1++))"
echo "$((++num1))"

echo $num1

number1=10
number1=$((number1 + 3))
echo "value= $number1"

echo "ADD: $((number1+=3))"
echo "$number1"

echo "SUBSTRACT: $((number1-=10))"
echo $number1

echo "MULTIPLY: $((number1*=10))"
echo $number1