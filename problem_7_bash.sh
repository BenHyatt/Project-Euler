primecheck=3
checking=2
good=1
num_primes=1
while [ $num_primes -lt 10001 ]
do
        upto=$(((primecheck ** 1/2) + 1))
        while [ $checking -lt $upto -a $good -eq 1 ]
        do
                if [ $((primecheck % checking)) -gt 0 ]
                then
                        good=1
                else
                        good=0
                fi
                checking=$((checking + 1))
        done
        if [ $good -eq 1 ]
        then
                num_primes=$((num_primes + 1))
                echo "$primecheck is PRIME & is prime number $num_primes!"
        fi
        primecheck=$((primecheck + 2))
        checking=2
        good=1
done
answer=$((primecheck - 2))
echo "The answer is $answer"
