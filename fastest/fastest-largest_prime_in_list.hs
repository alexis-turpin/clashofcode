{-
You must output the largest prime of the given list of numbers.

INPUT:
Line 1: an integer N
Next N lines: an integer M

OUTPUT:
Line 1: The largest prime from the given input.

CONSTRAINTS:
1 ≤ N ≤ 100
0 ≤ M ≤ 1000

EXAMPLE:
Input
4
1
2
3
4
-}
import System.IO
import Control.Monad

main :: IO ()
main = interact largestPrime

largestPrime = show . maximum . filter isPrime . map (read :: String -> Integer) . drop 1 . lines

isPrime x = x == relevantPrime
  where
    relevantPrime = head $ dropWhile (< x) primes

primes = 2 : sieve [3,5..] where sieve (p:xs) = p : [x | x <- xs, x `mod` p /= 0]
