#!/bin/bash 

echo "enter three inputs :: "
read a b c
result1=$(($a+($b*$c)))
result2=$((($a*$b)+$c))
result3=$(($c+($a/$b)))
result4=$((($a%$b)+$c))

declare -A dictionary
	dictionary[uc2]="$result1"
	dictionary[uc3]="$result2"
	dictionary[uc4]="$result3"
	dictionary[uc5]="$result4"

declare -a Array
	for ((count=0; count<=${#dictionary[*]}; count++))
		do
	Array[count]=${dictionary[uc$((count+1))]}
		done
			echo "${Array[@]}"
         

