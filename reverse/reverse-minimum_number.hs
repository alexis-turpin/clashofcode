{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
5
2
2
02 Test 2
8
3
3
03 Test 3
0
5
0
04 Test 4
0
0
0
-}
main :: IO ()
main = do
    input_lines <- getContents
    let xs = map read $ lines input_lines :: [Integer]
    print $ minimum xs
