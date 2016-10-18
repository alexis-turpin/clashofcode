{-
Your program must compute the value of a linear function at the given points.

A linear function is of the form f(x) = a * x + b, with a and b, two constant values. You are given the values a, b and a set of N values of x. You must compute the value of f(x) for each of the N values of x.

INPUT:
Line 1 : two space-separated integers a and b
Line 2 : an integer N
N next lines : an integer x on each line

OUTPUT:
N lines : the value of f(x) for each x value given as input

CONSTRAINTS:
-100 < a, b < 100
-100 < x < 100

EXAMPLE:
Input
5 -2
3
3
8
-1
-}
import Control.Monad

main :: IO ()
main = do
    [a, b] <- fmap (map read . words) getLine :: IO [Int]
    n <- readLn :: IO Int
    
    replicateM_ n $ do
        x <- readLn :: IO Int
        print $ answer a b x

answer a b x = a * x + b
