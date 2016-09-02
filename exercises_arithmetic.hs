module Exercises where
-- Problem 31 - Determine whether a given integer number is prime.
prime :: (Integral a) => a -> Bool
prime 0 = False
prime 1 = False
prime 2 = True
prime x
    | even x         = False
    | otherwise      = foldl ((\primeCandidate _ y -> primeCandidate `mod` y /= 0) x) True [3,5..maxDivisor]
    where maxDivisor = truncate (sqrt (fromIntegral x))

-- Problem 32 - Determine the greatest common divisor of two positive integer
-- numbers. Use Euclid's algorithm.
findGCD :: (Integral a) => a -> a -> a
findGCD x y
    | x == y = x
    | x > y  = findGCD (x-y) y
    | x < y  = findGCD (y-x) x

-- Problem 33 - Determine whether two positive integer numbers are coprime. Two
-- numbers are coprime if their greatest common divisor equals 1.
isCoprime :: (Integral a) => a -> a -> Bool
isCoprime x y
    | findGCD x y == 1 = True
    | otherwise        = False

-- Problem 34 - Calculate Euler's totient function phi(m).
-- Euler's so-called totient function phi(m) is defined as the number of
-- positive integers r (1 <= r < m) that are coprime to m.
boolCoprime :: (Integral a) => a -> a -> a
boolCoprime x y
    | isCoprime x y = 1
    | otherwise     = 0

phi :: (Integral a) => a -> a
phi x = foldl ((\x2 acc y -> acc + boolCoprime x2 y) x) 0 [1,2..x]

-- Problem 35 - Determine the prime factors of a given positive integer.
-- Construct a flat list containing the prime factors in ascending order.
primeFactor :: (Integral a) => a -> [a] -> [a]
primeFactor x xs
    | prime x = [x]
    | prime primeCandidate = [firstDivisor, primeCandidate]
    | otherwise = firstDivisor : primeFactor primeCandidate xs
    where maxDivisor     = truncate (sqrt (fromIntegral x))
          firstDivisor   = head (filter ((\inputNumber divisor -> inputNumber `mod` divisor == 0) x) [2,3..maxDivisor])
          primeCandidate = x `div` firstDivisor

primeFactors :: (Integral a) => a -> [a]
primeFactors x = primeFactor x []

-- Problem 36 - Determine the prime factors of a given positive integer.
-- Construct a list containing the prime factors and their multiplicity.
-- primeFactors' :: (Integral a) => a -> [a]
-- primeFactors' x =

-- Problem 37 - Calculate Euler's totient function phi(m) (improved).
-- See problem 34 for the definition of Euler's totient function. If the list of
-- the prime factors of a number m is known in the form of problem 36 then the
-- function phi(m) can be efficiently calculated as follows: Let ((p1 m1) (p2
-- m2) (p3 m3) ...) be the list of prime factors (and their multiplicities) of a
-- given number m. Then phi(m) can be calculated with the following formula:


-- Problem 38 - Compare the two methods of calculating Euler's totient function.


-- Problem 39 - Given a range of integers by its lower and upper limit,
-- construct a list of all prime numbers in that range.
rangePrimes :: (Integral a) => [a] -> [a]
rangePrimes = filter prime

-- Problem 40 - Goldbach's conjecture.
-- Goldbach's conjecture says that every positive even number greater than 2 is
-- the sum of two prime numbers. Example: 28 = 5 + 23. It is one of the most
-- famous facts in number theory that has not been proved to be correct in the
-- general case. It has been numerically confirmed up to very large numbers
-- (much larger than we can go with our Prolog system). Write a predicate to
-- find the two prime numbers that sum up to a given even integer.
goldbachTest :: (Integral a) => a -> a -> (a, a)
goldbachTest x y
    | first && second = (x, y)
    | otherwise       = goldbachTest (x-2) (y+2)
    where first  = prime x
          second = prime y

goldbach :: (Integral a) => a -> (a, a)
goldbach x
    | odd x     = error "Number must be even!"
    | odd half  = goldbachTest half half
    | otherwise = goldbachTest (half-1) (half+1)
    where half = x `div` 2

-- Problem 41 -  Given a range of integers by its lower and upper limit, print a list of all even
-- numbers and their Goldbach composition.
-- In most cases, if an even number is written as the sum of two prime numbers, one of them is very
-- small. Very rarely, the primes are both bigger than say 50. Try to find out how many such cases
-- there are in the range 2..3000.
