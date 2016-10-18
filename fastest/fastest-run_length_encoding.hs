{-
You must apply run length encoding algorithm to the given string.

Run length encoding is a simple form of data compression, where sequences of repeating characters are replaced by a pair N, C where N is the size of the sequence and C is the repeated character.

INPUT:
Line 1: A string S to encode.

OUTPUT:
Line 1: The run length encoded version of S.

CONSTRAINTS:
0 < S < 50

EXAMPLE:
Input
abbcccdddd
Output
1a2b3c4d
-}
import Control.Arrow
import Data.List

main = interact answer

answer = concat . concatMap ((\ (a, b) -> [show a, [b]]) . (length &&& head)) . group
