{-
Given a string L (of length N), print out every right rotation of L until it reverts to the original string.

INPUT:
Line 1: A string L

OUTPUT:
Line 1: L
Line 2: L rotated by one character to the right
Line 3: L rotated by two characters to the right
...
Line N: L rotated by N - 1 characters to the right
Line N + 1: L

CONSTRAINTS:
2 ≤ N ≤ 50

EXAMPLE:
Input
Codingame
Output
Codingame
eCodingam
meCodinga
ameCoding
gameCodin
ngameCodi
ingameCod
dingameCo
odingameC
Codingame
-}
import Data.List
main=interact$(\x->unlines.(++[x]).nub.reverse$zipWith(++)(tails x)(inits x))
