#!/bin/sh
#Author  	Aiman
#Date		19/9/2019
#Purpose	This script is to get input(numbers)and print the highest value,lowest value,average and different first and last value

echo "Please input some data separated by space ..."
read numbers
#numbers="104.45 108.89 99.56 102.3"

#Assigning number into array
x=0
sum=0
declare -a array
for i in $numbers
do
	array[x]=$i
#	echo ${array[x]} 
	x="$(($x+1))"
#	sum="$( bc <<<"$sum + $i" )"
	sum="$(($sum + $i))"
done
echo ++++++++++++++++++++++++++++++++++++++++++++++


#Print the highest number
IFS=$'\n'
echo "highest number is :"
echo "${array[*]}" | sort -nr | head -n1

#Print the lowest number
IFS=$'\n'
echo "lowest number is :"
echo "${array[*]}" | sort -n | head -n1

#Print Sum of the number
echo "Average number is :"
printf 'sum = %.2f\n' "$sum"


#Different between first and last
#echo "Different between first and last number is :"
#diff="$((${array[x]}-${array[0]}))"
#echo $diff