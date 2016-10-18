{-
Your program must display the missing digit for each line.

INPUT:
Line 1 : An integer N, the number of lines to read.
N next lines : A string line of 9 digits without spaces.

OUTPUT:
Line 1 : The missing digit.

CONSTRAINTS:
0 < N < 1000

EXAMPLE:
Input
1
123456789
Output
0
-}
import Data.List (sort)
import Data.Char (digitToInt)

main :: IO ()
main = interact answer

answer :: String -> String
answer = unlines . map (show . missingDigit . readInts) . drop 1 . lines
  where
    readInts :: String -> [Int]
    readInts = map digitToInt

missingDigit :: [Int] -> Int
missingDigit xs
    | 9 `elem` xs = fst . head . filter (uncurry (/=)) $ zip [0..9] (sort xs)
    | otherwise = 9
