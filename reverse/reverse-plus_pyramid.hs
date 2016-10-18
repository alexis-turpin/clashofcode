{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
4
1234
+123
++12
+++1
02 Test 2
2
12
+1
03 Test 3
1
1
04 Test 4
3
123
+12
++1
-}
import Control.Monad

main :: IO ()
main = do
    n <- readLn :: IO Int
    forM_ [1..n] $ \x -> do
        let left = replicate (x - 1) '+'
        let right = concatMap show $ take (n - x + 1) [1..n]
        putStrLn $ left ++ right
