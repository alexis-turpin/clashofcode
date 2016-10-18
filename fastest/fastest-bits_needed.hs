{-
You must output the minimum number of bits required to code given numbers.

INPUT:
Line 1: An integer N for the number of tests.
N Following lines: An integer X which represents a number to process.

OUTPUT:
For each number to process, the minimum number of bits required to code it.

CONSTRAINTS:
0 < N < 100
0 ≤ X < 1000

EXAMPLE:
Input
2
1
6
Output
1
3
-}
import Numeric (showIntAtBase)
import Data.Char (intToDigit, toLower)

main = interact $ unlines . map (show . length . flip (showIntAtBase 2 intToDigit) ([]) . read) . tail . lines
