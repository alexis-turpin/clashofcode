{-
Your program must perform a binary OR on two binary numbers given through the standard input and print the result to the standard output.

OR Truth Table
Input	Output
A	B
0	0	0
0	1	1
1	0	1
1	1	1

Warning, the number in output must have the same number of digits as the given numbers.

INPUT:
2 binary numbers n1 and n2, separated by spaces.

OUTPUT:
The result of an OR between n1 and n2.

CONSTRAINTS:
n1 and n2 have the same number of digits.

EXAMPLE:
Input
001 011
Output
011
-}
main = interact $ (\[a, b] -> zipWith binaryOrString a b) . words

binaryOrString :: Char -> Char -> Char
binaryOrString '0' '0' = '0'
binaryOrString _ _ = '1'
