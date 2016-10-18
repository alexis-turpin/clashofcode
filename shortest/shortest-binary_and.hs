{-
Your program must perform a binary AND on two binary numbers given through the standard input and print the result to the standard output.

AND Truth Table
Input	Output
A	B
0	0	0
0	1	0
1	0	0
1	1	1

Warning, the number of binary digits must remain the same.

INPUT:
2 binary numbers n1 and n2, separated by spaces.

OUTPUT:
The result of an AND between n1 and n2.

CONSTRAINTS:
n1 and n2 have the same number of digits.

EXAMPLE:
Input
001 011
Output
001
-}
main=interact$(\[x,y]->zipWith a x y).words
a '1''1'='1'
a _ _='0'
