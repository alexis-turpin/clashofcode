{-
Given a digit N, you must print a reverse pyramid with the base containing N times that digit. Each consecutive row containing 1 digit less. 
The result should contain no spaces.

INPUT:
Line 1: An integer N.

OUTPUT:
A triangle formed by N times the digit N one the first row, then one digit less per row.

CONSTRAINTS:
1 ≤ N ≤ 9

EXAMPLE:
Input
2
Output
22
2
-}
main=interact$unlines.map concat.a.read
a x=map(`replicate`show x)[x,x-1..1]
