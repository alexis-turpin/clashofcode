{-
Your program must convert a sequence of integers into a string of ASCII characters.

INPUT:
Line 1: An integer charCount for the number of integers to convert.
Line 2: charCount integers charCode, separated by spaces.

OUTPUT:
A single line containing a string of characters with the given ASCII codes.

CONSTRAINTS:
0 < charCount < 1000 
32 ≤ charCode ≤ 126

EXAMPLE:
Input
11 
72 101 108 108 111 32 87 111 114 108 100
Output
Hello World
-}
import Data.Char
main=interact$map(chr.read).tail.words
