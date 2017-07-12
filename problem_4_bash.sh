#!/bin/bash
num_1=999
num_2=999
product=$((num_1 * num_2))
reverse=1
until [ $num_2 -lt 101 ]
do
	while [ $num_1 -gt 99 ]
	do
		product=$((num_1 * num_2))
		reverse=$(echo $product | rev)
		num_1=$((num_1 - 1))
		if [ $product -eq $reverse ]
	        then
                	echo "$reverse"
        	fi
	done
	if [ $product -eq $reverse ]
	then
		echo "$reverse"
	fi
	num_1=999
	num_2=$((num_2 - 1))
	echo "PRODUCT: $product"
done
echo "ANSWER: $product"
