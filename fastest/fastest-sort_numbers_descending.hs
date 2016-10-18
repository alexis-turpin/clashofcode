{-
01 Test 1
3
4
6
1
6 4 1
02 Test 2
2
3
4
4 3
03 Test 3
8
7
4
150
2
38
77
32
18
150 77 38 32 18 7 4 2
04 Test 4
50
117
433
371
115
426
309
96
272
84
326
294
101
111
-}
import Data.List
main = interact (unwords.map show.reverse.sort.map (read :: String -> Integer).tail.lines)
