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

for i in $numbers
do
	array[$x]=$i
	x="$(($x+1))"
	sum="$( bc <<<"$sum + $i" )"
#	sum="$(($sum + $i))"
done
echo ++++++++++++++++++++++++++++++++++++++++++++++

#Print the how many number given
echo "How many number given :"
echo "$x" 

#Print all value given *array
echo "Printing all value given :"
echo ${array[@]} 

#Print the highest number
IFS=$'\n'
echo "highest number is :"
echo "${array[*]}" | sort -nr | head -n1

#Print the lowest number
IFS=$'\n'
echo "lowest number is :"
echo "${array[*]}" | sort -n | head -n1

#Print Sum of the number
echo "Sum of number is :"
printf '%.2f\n' "$sum"

#Print average of the number
echo "Average is :"
avg="$( bc <<<"$sum / $x" )"
printf '%.2f\n' "$avg"

#Different between first and last
echo "Different between first and last number is :"
first=${array[0]}
last=${array[$x]}
echo "first value $first" 
echo "last value $last"
