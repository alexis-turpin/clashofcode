{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
8372?9514
6
02 Test 2
981453?67
2
03 Test 3
318?92657
4
04 Test 4
1234?6789
5
-}
import Data.List
import Data.List.Split

main :: IO ()
main = do
    s <- fmap (filter (/= '?')) getLine
    let d = concatMap show [1..9]
    putStrLn $ d \\ s
