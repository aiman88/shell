#!/bin/bash
#Author  	Aiman
#Date		20/9/2019
#This script is to calculate and showing out in two decimal place

if (( $# != 2 )); then
    echo >&2 'Expected two arguments'
    exit 1
fi

x="$1"
y="$2"
sum="$( bc <<<"$x + $y" )"
printf 'sum = %.2f\n' "$sum"