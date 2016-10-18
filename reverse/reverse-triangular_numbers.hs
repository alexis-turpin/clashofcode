{-
01 Test 1
5
15
02 Test 2
7
28
03 Test 3
8
36
04 Test 4
1
1
05 Test 5
9
45
06 Test 6
10
55
07 Test 7
2
3
08 Test 8
3
6
09 Test 9
4
10
10 Test 10
6
21
-}
main :: IO ()
main = readLn >>= print . triangleNum

triangleNum :: Int -> Int
triangleNum x = x * (x + 1) `div` 2
