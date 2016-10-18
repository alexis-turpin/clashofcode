{-
Your program must output the digital root of the number given in input.

The digital root is obtained by summing the individual digits of the number, then repeating the process on the result until the result has a single digit.

For instance:
- the digital root of 12 is 3 (1 + 2)
- the digital root of 85 is 4 (8 + 5 = 13 -> 1 + 3 = 4)

INPUT:
Line 1: N, the number to process

OUTPUT:
Line 1: the digital root of N

CONSTRAINTS:
0 ≤ N<2^32

EXAMPLE:
Input
12
Output
3
-}
import Data.Char
main=interact a
a[x]=[x]
a n=a$show$sum$map digitToInt n
