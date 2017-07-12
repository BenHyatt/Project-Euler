#!/bin/bash
solvefor=100
lessthan=$((solvefor + 1))
on=1
sum_1=0
while [ $on -lt $lessthan ]
do
	square=$((on * on))
	sum_1=$((square + sum_1))
	on=$((on + 1))
done
echo "The sum is $sum_1."
on=1
sum_2=0
while [ $on -lt $lessthan ]
do
	sum_2=$((sum_2 + on))
	on=$((on + 1))
done
sum_2=$((sum_2 * sum_2))
echo "The second sum is $sum_2."
difference=$((sum_2 - sum_1))
echo "That means the difference is $difference"
