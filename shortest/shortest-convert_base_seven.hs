{-
Your program must read decimal integer from the standard input and write to the standard output the same number converted to base 7.

INPUT:
One integer N.

OUTPUT:
N in base 7.

CONSTRAINTS:
0 ≤ N ≤ 10000

EXAMPLE:
Input
8
Output
11
-}
import Numeric
import Data.Char
main=interact((\x->showIntAtBase 7 intToDigit x"").read)
