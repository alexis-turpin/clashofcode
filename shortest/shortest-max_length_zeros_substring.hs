{-
Your program must find the longest sequence of consecutive zeroes in an integer number.

For example, the number 10002030000 has three sequences of zeroes with lengths 3, 1 and 4. So the longest sequence is 4.

If a number doesn't contain zeroes, then the result is 0.

INPUT:
Line 1: an integer N.

OUTPUT:
Line 1: the length of the longest sequence of consecutive zeroes in N.

CONSTRAINTS:
0 ≤ N ≤ 10000000000000000

EXAMPLE:
Input
100020300001
Output
4
-}
import Data.List
main=interact(show.m.map length.filter((=='0').head).group)
m[]=0
m x=maximum x
