{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
4
5 4 1 7
4
02 Test 2
5
2 4 6 7 8
7
03 Test 3
6
13 0 6 4 14 20
13
04 Test 4
5
0 3 5 7 9
0
05 Test 5
4
-5 -13 42 1
42
-}
main :: IO ()
main = do
    _ <- getLine
    xs <- fmap (map read . words) getLine :: IO [Int]
    print $ oddOneOut xs

oddOneOut :: [Int] -> Int
oddOneOut xs = head $ filter filterFunc xs
  where
    filterFunc
        | numEven > numOdd = odd
        | otherwise = even
    numEven = length $ filter even xs
    numOdd = length xs - numEven
