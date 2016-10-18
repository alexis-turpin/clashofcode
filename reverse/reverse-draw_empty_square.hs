{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
5
#####
#   #
#   #
#   #
#####
02 Test 2
4
####
#  #
#  #
####
03 Test 3
3
###
# #
###
04 Test 4
2
##
##
05 Test 5
1
#
-}
import Control.Monad

main :: IO ()
main = do
    n <- readLn :: IO Int
    forM_ [1..n] $ \x -> do
        forM_ [1..n] $ \y -> do
            putChar $ c n x y
        putChar '\n'

c n x y
    | x `elem` [1, n] = '#'
    | y `elem` [1, n] = '#'
    | otherwise = ' '
