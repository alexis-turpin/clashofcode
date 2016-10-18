{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
5 -2
3
3
8
-1
13
38
-7
02 Test 2
1 0
3
1
2
3
1
2
3
03 Test 3
0 5
3
1
45
3
5
5
5
04 Test 4
2 3
5
0
2
4
6
1
3
7
11
15
5
05 Test 5
-4 4
5
1
3
5
7
2
0
-8
-16
-24
-4
-}
import System.IO
import Control.Monad

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering -- DO NOT REMOVE
    
    -- Auto-generated code below aims at helping you parse
    -- the standard input according to the problem statement.
    
    input_line <- getLine
    let input = words input_line
    let a = read (input!!0) :: Int
    let b = read (input!!1) :: Int
    input_line <- getLine
    let n = read input_line :: Int
    
    replicateM_ n $ do
        input_line <- getLine
        let x = read input_line :: Int
        print $ x * a + b
