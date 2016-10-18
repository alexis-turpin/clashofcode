{-
Your program must display "true" if the binary representation of the number only contains 1's. Otherwise, print "false".

INPUT:
Line 1: A positive integer N.

OUTPUT:
Line 1: Une chaîne de caractère "true" ou "false"

CONSTRAINTS:
0 < N < 2 000 000

EXAMPLE:
Input
3
Output
true
-}
main=interact$a.read
a x=if(x`elem`(takeWhile(<=x)$map((subtract 1).(2^))[1..]))then"true"else"false"
