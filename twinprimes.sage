def calcultation(n):
    primorial2 = primorialFunction(n, 2)
    primorial = primorialFunction(n, 0)
    antiPrimorial = 0
    nOriginal = n
    twin_set = set()
    while n < primorial:
        n += 1
        if primeFactor1(n, nOriginal) or primeFactor2(n, nOriginal):
            twin_set.add(n)
            antiPrimorial += 1
    print(f"The number of twin primes up to {primorial} is {primorial2 - antiPrimorial + countTwinPrimesTo(nOriginal)}")
    print(f"The number of twin primes up to {primorial} for realy is {countTwinPrimesTo(primorial)}")
    #print("-------------------------")
    #print(twin_set)
    #print(twinPrimesTo(primorial))

def primorialFunction(n, s):
    y = 1
    primorial = 1
    while y < n: 
        y = next_prime(y)
        primorial *= max((y-s),1)
    return primorial
def countTwinPrimesTo(n):
    x = 1
    twin = 0
    while x < n :
        x = next_prime(x)
        if is_prime(x+2):
            twin += 1
    return twin

def twinPrimesTo(n):
    x = 1
    twin_set = set()
    while next_prime(x) < n:
        x = next_prime(x)
        if is_prime(x + 2):
            twin_set.add(x)
    return twin_set

def get_prime_factors(n):
    factors = factor(n)
    return [p[0] for p in factors]

def primeFactor1(n, nOriginal):
    prime_factors = get_prime_factors(n)
    if all(p > nOriginal for p in prime_factors):
        factors = get_prime_factors(n + 2)
        if all(p > nOriginal for p in factors) and not is_prime(n + 2):
            return True
    return False

def primeFactor2(n, nOriginal):
    prime_factors = get_prime_factors(n)
    if all(p > nOriginal for p in prime_factors) and not is_prime(n):
        factors = get_prime_factors(n + 2)
        if all(p > nOriginal for p in factors):
            return True
    return False

n = 1
while n<15:
    n = next_prime(n)
    calcultation(n)
