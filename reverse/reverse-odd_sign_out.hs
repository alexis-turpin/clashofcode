{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
-5 -13 42
42
02 Test 2
-1 -2 -3 -4 -5 6 -7 -8 -9 -10
6
03 Test 3
-1 0 -2
0
04 Test 4
-1 0 1
-1
-}
main = do
    xs <- fmap (map read . words) getLine :: IO [Int]
    print $ oddOneOut xs

oddOneOut xs = head $ filter f xs
  where
    f
      | numNegative > numPos = (>=0)
      | otherwise = (<0)
    numNegative = length $ filter (<0) xs
    numPos = length xs - numNegative
