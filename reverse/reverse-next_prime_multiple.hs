{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
7
49
02 Test 2
81
243
03 Test 3
357911
25411681
04 Test 4
32768
65536
05 Test 5
819628286980801
25408476896404831
-}
main = interact $ show . nextPrimeMultiple . read

nextPrimeMultiple x = head $ dropWhile (<= x) (multiples p)
  where
    multiples x = iterate (*x) x
    p = smallestPrimeFactor x

smallestPrimeFactor x = head $ filter ((== 0) . rem x) primes

primes = 2 : sieve [3,5..]
  where
    sieve (p:xs) = p : sieve [x | x <- xs, x `rem` p > 0]
