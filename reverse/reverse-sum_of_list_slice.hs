{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
4
4 2 5 8
3
0 3
1 2
3 3
19
7
8
02 Test 2
1
42
1
0 0
42
03 Test 3
2
0 0
1
0 0
0
04 Test 4
10
0 1 0 0 1 0 0 1 0 1
11
0 0
0 1
0 2
0 3
0 4
0 5
5 5
5 6
5 7
5 8
5 9
0
1
1
1
2
2
0
0
1
1
2
05 Test 5
3
-2 0 2
3
0 2
0 0
1 2
0
-2
2
-}
main = do
    _ <- getLine
    xs <- fmap (map read . words) getLine :: IO [Int]
    _ <- getLine
    rest <- getContents
    putStr $ unlines $ map (show . something xs . map read . words) $ lines rest

something xs [start, end] = sum $ slice start end xs

slice from to xs = take (to - from + 1) (drop from xs)