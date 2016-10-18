{-
A prime is said to be weak if it smaller than the average of the two surrounding primes.

For example, 13 is a weak prime since it is less than the average of the two surrounding primes 11 and 17.

A prime is said to be balanced if it is the average of the two surrounding primes, i.e., it is at equal distance from previous prime and next prime.

Otherwise the prime is known as strong.
Input
One integer N, a prime number.
Output
WEAK if the prime number is weak.
BALANCED if the prime number is balanced.
STRONG if the prime number is strong
Constraints
2<N<130000
Example
Input
13
Output
WEAK
-}
-- NOTE: Only scores a 71%. Needs to be optimized more e.g., iterate
--   through the list of primes once.
main = do
    n <- readLn
    case compare (fromIntegral n) (a n) of
        LT -> putStrLn "WEAK"
        EQ -> putStrLn "BALANCED"
        GT -> putStrLn "STRONG"
primes = 2 : sieve [3,5..] where sieve (p:xs) = p : sieve [x | x <- xs, x `rem` p > 0]
a n=((fromIntegral m) + (fromIntegral o)) / 2
  where
    m = last $ takeWhile (< n) primes
    o = head $ dropWhile (<= n) primes
