{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
5
breakfast
fastbreak
02 Test 2
2
ha
ha
03 Test 3
5
WorldHello
HelloWorld
04 Test 4
4
rainT
Train
05 Test 5
9
mind
indm
-}
main :: IO ()
main = do
    x <- readLn
    s <- getLine
    putStrLn $ take (length s) $ drop x (cycle s)
