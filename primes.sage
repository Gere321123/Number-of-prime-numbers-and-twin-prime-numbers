def calcultation(n):
    primorial1 = primorialFunction(n,1)
    primorial = primorialFunction(n,0)
    antiPrimorial = 0
    prime_set = set()
    nOriginal = n
    while n < primorial:
        n += 1
        if primeFactor(n, nOriginal):
            prime_set.add(n)
            antiPrimorial += 1
    print(f"The number of primes up to {primorial} is {primorial1 - antiPrimorial + countPrimesTo(nOriginal)}")
    print(f"The number of primes up to {primorial} for realy is {countPrimesTo(primorial)}")
    #print("-------------------------")
    #print(prime_set)
    #print(primesTo(primorial))

def primorialFunction(n, s):
    y = 1
    primorial = 1
    while y < n: 
        y = next_prime(y)
        primorial *= max((y-s),1)
    return primorial

def countPrimesTo(n):
    x = 1
    prime = 0
    while x < n :
        x = next_prime(x)
        prime += 1
    return prime

def primesTo(n):
    x = 1
    prime_set = set()
    while next_prime(x) < n:
        x = next_prime(x)
        prime_set.add(x)
    return prime_set

def primeFactor(n, nOriginal):
    factors = factor(n)
    prime_factors = [p[0] for p in factors]
    if all(p > nOriginal for p in prime_factors) and not is_prime(n):
        return True
    return False

n = 1
while n<15:
    n = next_prime(n)
    calcultation(n)
