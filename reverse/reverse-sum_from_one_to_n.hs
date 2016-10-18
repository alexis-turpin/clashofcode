{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
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
main = do
    n <- readLn :: IO Int
    print $ sum [1..n]
