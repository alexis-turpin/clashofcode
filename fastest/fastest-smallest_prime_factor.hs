{-
You program must output the smallest prime factor of N.
If N equals 0 or 1 you program must output NONE

Example :
15 = 3 * 5 , 3 and 5 are both prime and 3 is the smallest so the result is 3.

INPUT:
Line 1: An integer N

OUTPUT:
Line 1 : The smallest prime factor of N

CONSTRAINTS:
0 ≤ N ≤ 2000000

EXAMPLE:
Input
15
Output
3
-}
main :: IO ()
main = do
    n <- readLn :: IO Integer
    putStrLn $ answer n

answer :: Integer -> String
answer 0 = "NONE"
answer 1 = "NONE"
answer n = show $ head $ filter ((== 0) . (n `mod`)) primes

primes :: [Integer]
primes = 2 : sieve [3,5..] where sieve (p:xs) = p : [x | x <- xs, x `mod` p > 0]
