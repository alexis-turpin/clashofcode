{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
5
2 4 2 4 1
1
02 Test 2
7
1 1 2 2 3 4 3
4
03 Test 3
1
9
9
04 Test 4
3
1 2 1
2
05 Test 5
9
1 3 2 4 5 4 2 3 1
5
-}
import Control.Arrow
import Data.List

main :: IO ()
main = do
    _ <- getLine
    input_line <- getLine
    putStrLn $ leastFrequent $ words input_line

leastFrequent :: Ord a => [a] -> a
leastFrequent = snd . minimum . frequency

frequency :: Ord a => [a] -> [(Int, a)]
frequency = map (length &&& head) . group . sort
