import math
number = 600851475143;
sqr = int(round(math.sqrt(number), 0))
for n in range(sqr, 1, -1):
	if((number % n) == 0):
		x = 2
		while(x < int(round(math.sqrt(n), 0)) and (n % x) > 0):
			x = x + 1
		if(x == int(round(math.sqrt(n), 0))):
			print n
			exit()
