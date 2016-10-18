{-
Your program must determine in which category belongs a given integer. The possible integers are named intervals that are also given. 
The intervals do not overlap.
The integer always belongs to a category.

INPUT:
Line 1: X the integer to categorize.
Line 2: N an integer for the number of categories.
Next N lines: Two integers F and T for the inclusive bounds of the interval, followed by a word category, its name.

OUTPUT:
The name of the category with the interval that contains X.

CONSTRAINTS:
0 < N < 100
-1000 ≤ F ≤ T ≤ 1000
F ≤ X ≤ T

EXAMPLE:
Input
10
3
-1000 -1 negative
0 0 null
1 1000 positive
Output
positive
-}
import System.IO
import Control.Monad

main :: IO ()
main = do
    input_line <- getLine
    let x = read input_line :: Int
    input_line <- getLine
    let n = read input_line :: Int

    ranges <- replicateM n $ do
        input_line <- getLine
        let input = words input_line
        let lower = read (input!!0) :: Int
        let upper = read (input!!1) :: Int
        let category = input!!2
        return (lower, upper, category)
    
    putStrLn $ categorize x ranges
    
categorize :: Int -> [(Int, Int, String)] -> String
categorize x = (\(_, _, c) -> c) . head . filter (\(lower, upper, category) -> x >= lower && x <= upper)
