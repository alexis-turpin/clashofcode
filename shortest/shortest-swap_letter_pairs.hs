{-
Swap each character at an even position with the next character if there is one. Positions start at zero.

INPUT:
A single string s.

OUTPUT:
The transformed string.

CONSTRAINTS:
s contains less than 8192 characters.

EXAMPLE:
Input
ABCDEF
Output
BADCFE
-}
main=interact a
a(x:y:z)=y:x:a z
a z=z
