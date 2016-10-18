{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
3
1 0 1
0
02 Test 2
3
0 1 0
1
03 Test 3
5
1 0 1 0 0
0
04 Test 4
10
1 0 1 0 0 1 0 1 0 0
0
05 Test 5
12
1 1 1 1 1 1 1 1 1 1 1 1
0
06 Test 6
13
1 1 1 1 1 1 1 1 1 1 1 1 1
1
07 Test 7
24
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
1
08 Test 8
30
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0
0
-}
import Data.Bits

main :: IO ()
main = do
    _ <- getLine
    xs <- fmap (map read . words) getLine :: IO [Int]
    print $ foldr1 xor xs
