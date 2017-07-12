#!/bin/bash
number_on=5
sum=0
below=1000 #Number you want the range to be lower than.  The problem asks for 1000.
while [ $number_on -lt $below ]
do
	echo $number_on
	sum=$((sum + number_on))
	number_on=$((number_on + 5))
	if [ $number_on -lt $below ]
	then
		echo $number_on
		sum=$((sum + number_on))
		number_on=$((number_on + 10))
	fi
done
echo -e
echo $sum
number_on=0
while [ $number_on -lt $below ]
do
	sum=$((sum + number_on))
	number_on=$((number_on + 3))
done
echo The answer is $sum!
