{-
Print all prime numbers less than or equal to N.

INPUT:
Ligne 1 : An integer N representing the upper bound.

OUTPUT:
M following lines : All prime numbers in increasing order less than or equal to N.

CONSTRAINTS:
1<N<1000

EXAMPLE:
Input
10
Output
2
3
5
7
-}
main :: IO ()
main = interact $ unlines . map show . (\x -> takeWhile (<= x) primes) . read

primes :: [Integer]
primes = 2 : sieve [3,5..] where sieve (p:xs) = p : sieve [x | x <- xs, x `rem` p > 0]
