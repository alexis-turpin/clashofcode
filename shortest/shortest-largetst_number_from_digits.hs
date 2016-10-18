{-
Your program must output the biggest number that is writtable by using the given digits.

INPUT:
Line 1: An integer N, the number of digits.
Line 2: N space separated digits.

OUTPUT:
Line 1: The biggest number that is writtable using all the given digits.

CONSTRAINTS:
1 ≤ N ≤ 10

EXAMPLE:
Input
9
1 2 3 4 5 6 7 8 9
Output
987654321
-}
import Data.List
main=interact$z.concat.reverse.sort.tail.words
z('0':x)="0"
z x=x
