def modexp (b, e, m):
	res = 1
	b = b % m
	while e != 0:
		if e & 1 == 1:
			res = (res * b) % m
		b = (b * b) % m
		e >>= 1
	return res


print("%x" %modexp(0x53616c7574, 0x2ad50273, 0x32ffc831c))

print("%x" %((0x53616c7574**0x2ad50273) % 0x032ffc831c))