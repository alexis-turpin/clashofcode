{-
Your program must find the missing digit in a single line of sudoku.
As a reminder, in a sudoku grid, each line must contain all digits from 1 to 9, one time each.

INPUT:
One line of a sudoku grid with a missing digit marked by a '?'

OUTPUT:
The missing digit.

EXAMPLE:
Input
8372?9514
Output
6
-}
import Data.List
import Data.List.Split

main :: IO ()
main = fmap (filter (/= '?')) getLine >>= putStrLn . (['1'..'9'] \\)
