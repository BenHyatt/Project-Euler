#!/bin/bash
below=4000000
number_1=1
number_2=2
lessthan=$((number_2 + number_1))
echo $number_2
mod=$((number_2 % 2))
if [ $mod == "0" ]
then
	total=$((number_2 + total))
	echo "EVEN"
fi
while [ $lessthan -lt $below ]
do
	old=$number_2
	number_2=$((number_1 + number_2))
	number_1=$old
	lessthan=$((number_2 + number_1))
	echo $number_2
	mod=$((number_2 % 2))
	if [ $mod == "0" ]
	then
		total=$((number_2 + total))
		echo "EVEN"
	fi
done
echo -e
echo "$number_2"
echo "THE ANSWER IS $total"
