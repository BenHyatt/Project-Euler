multiple=0
until [ $((multiple % 19)) -eq 0 -a $((multiple % 18)) -eq 0 -a $((multiple % 15)) -eq 0 -a $((multiple % 16)) -eq 0 -a $((multiple % 14)) -eq 0 -a $((multiple % 17)) -eq 0 -a $((multiple % 14)) -eq 0 -a $((multiple % 13)) -eq 0 -a $((multiple % 12)) -eq 0 -a $((multiple % 11)) -eq 0 -a $multiple -gt 0 ]
do
	multiple=$((multiple + 2520))
done
echo "The answer is $multiple."
