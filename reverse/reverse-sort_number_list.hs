{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
5
5 4 9 2 7
2 4 5 7 9
02 Test 2
8
5 4 1 8 9 3 7 2
1 2 3 4 5 7 8 9
03 Test 3
10
-38 190 180 170 160 150 140 130 120 110
-38 110 120 130 140 150 160 170 180 190
04 Test 4
8
-1 1 -1 1 -1 1 -1 0
-1 -1 -1 -1 0 1 1 1
05 Test 5
3
5 12 8
5 8 12
-}
import Data.List

main = interact $ unwords . map show . sort . map (read :: String -> Int) . tail . words
