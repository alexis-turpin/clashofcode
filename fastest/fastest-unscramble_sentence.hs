{-
Your given a scrambled sentence. You must output an unscrambled version of the same sentence using these rules:
- First, print one in every two characters.
- Then print every other character starting from the end, going backwards. Make sure you handle strings of both even and odd lengths.

INPUT:
Line 1: One string scrambled.

OUTPUT:
A single line containing an unscrambled version of scrambled.

CONSTRAINTS:
scrambled contains at least 1 character.
scrambled contains less than 400 characters.

EXAMPLE:
Input
H!e ldllor oW
Output
Hello World !
-}
import Data.List.Split
main=interact a
a s=x++y
 where
 x=d s
 y
  |odd$length s=d$drop 1$reverse s
  |otherwise=d$reverse$tail s
d=map head.chunksOf 2
