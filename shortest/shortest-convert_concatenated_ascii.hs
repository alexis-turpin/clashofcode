{-
Convert a string code of concatenated ASCII code numbers to the corresponding string of ASCII characters.

INPUT:
String of decimal numbers. Each number is 3 digits long and padded with zeroes.

OUTPUT:
The corresponding ASCII string.
If the input length is not a multiple of 3, then you should output the string ERROR.

CONSTRAINTS:
0 < Length of code ≤ 500
32 ≤ ASCII code ≤ 255

EXAMPLE:
Input
067111100105110103
Output
Coding
-}
import Data.Char
import Data.List.Split
main=interact a
a s|length s`mod`3/=0="ERROR"|True=map(chr.read)$chunksOf 3 s
