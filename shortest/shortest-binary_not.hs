{-
Your program must perform a bitwise NOT on a binary number given through the standard input and print the result to the standard output.

Warning, the number of binary digits must remain the same.

INPUT:
1 binary number B.

OUTPUT:
The result of a NOT on B.

EXAMPLE:
Input
001
Output
110
-}
main=interact$map a
a '1'='0'
a _='1'
