{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
5
true
02 Test 2
2
true
03 Test 3
3
true
04 Test 4
4
false
05 Test 5
6
false
06 Test 6
7
true
07 Test 7
1
false
08 Test 8
8
false
09 Test 9
9
false
10 Test 10
10
false
-}
import Data.Char (toLower)

main :: IO ()
main = do
    x <- readLn :: IO Integer
    putStrLn $ map toLower $ show $ isPrime x

isPrime :: Integer -> Bool
isPrime x = x `elem` (takeWhile (<= x) primes)

primes :: [Integer]
primes = 2 : sieve [3, 5..] where sieve (p:xs) = p : [x | x <- xs, x `rem` p > 0]
