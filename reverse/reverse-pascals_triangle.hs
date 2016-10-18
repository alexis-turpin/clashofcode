{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
1
1 1
02 Test 2
4
1 4 6 4 1
03 Test 3
9
1 9 36 84 126 126 84 36 9 1
04 Test 4
12
1 12 66 220 495 792 924 792 495 220 66 12 1
05 Test 5
17
1 17 136 680 2380 6188 12376 19448 24310 24310 19448 12376 6188 2380 680 136 17 1
-}
main :: IO ()
main = interact $ unwords . map show . pascalRow . read

pascalRow :: Int -> [Int]
pascalRow n = map (\k -> (product [1..n]) `div` ((product [1..k]) * (product [1..n-k]))) [0..n]
