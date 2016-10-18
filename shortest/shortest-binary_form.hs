{-
Your program must output the binary representation of each number given as input.
Each number will be given on a separate line, you must output the binary result followed by a newline character in the same order.
The binary representation must always start with a 1, except for the number 0 (no zero-padding).

INPUT:
Line 1: N, an integer for the amount of numbers to test.
N next lines: X, an integer.

OUTPUT:
N lines: The binary representation of X.

CONSTRAINTS:
0 < N ≤ 100
0 ≤ X ≤ 1000

EXAMPLE:
Input
6
0
1
2
3
9
256
Output
0
1
10
11
1001
100000000
-}
import Numeric
import Data.Char
main=interact a
a=unlines.map(f.read).tail.lines
f x=showIntAtBase 2 intToDigit x ""
