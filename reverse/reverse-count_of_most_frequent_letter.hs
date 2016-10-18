{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
always choose a lazy person to do a difficult job
6
02 Test 2
woods
2
03 Test 3
wooly woods
4
04 Test 4
aaaatttiix
4
05 Test 5
a
1
06 Test 6
aa
2
07 Test 7
aaa
3
08 Test 8
bbbe
3
09 Test 9
abbb
3
10 Test 10
abab
2
-}
import Data.List

main = interact $ show . maximum . map length . group . sort . concat . words
