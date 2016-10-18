{-
Your program must calculate the sum of the numbers that are placed on the edges of a matrix.

You are given a matrix of size N by N.

Edges are the first and the last rows and columns. Don't count corners numbers twice.

INPUT:
Line 1: an integer number N.
Next N lines: N integer numbers separated by whitespaces.

OUTPUT:
An integer number, the sum of the edge numbers.

CONSTRAINTS:
0 < N ≤ 10
-100 ≤ Number of the matrix ≤ 100

EXAMPLE:
Input
4
1 2 2 1
2 9 9 2
2 9 9 2
0 2 2 0
-}
import Control.Monad

main :: IO ()
main = do
    input_line <- getLine
    let n = read input_line :: Int
    raw_lines <- replicateM n getLine
    let xs = map readNumbers raw_lines
    print $ answer xs

readNumbers :: String -> [Int]
readNumbers = map read . words

answer :: [[Int]] -> Int
answer [[x]] = x
answer xs = sum top + sum bot + sum left + sum right
  where
    top = head xs
    bot = last xs
    left = map head chop
    right = map last chop
    chop = init $ tail xs
