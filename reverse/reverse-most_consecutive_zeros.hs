{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
100020300001
4
02 Test 2
1000000000
9
03 Test 3
0
1
04 Test 4
123456789
0
05 Test 5
10000000000000000
16
06 Test 6
1020304050
1
07 Test 7
1000600007000000
6
-}
import Data.List

main = interact $ show . f . map length . filter ((== '0') . head) . group

f [] = 0
f xs = maximum xs
