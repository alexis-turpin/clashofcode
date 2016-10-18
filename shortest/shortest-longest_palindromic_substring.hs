{-
You must output the longest palindromic substring hidden in a string.

A palindrome has the same letters when read from left to right and from right to left.

INPUT:
A string

OUTPUT:
The longest palindromic substring

CONSTRAINTS:
The string contains at most 256 characters and is written in lowercase.

EXAMPLE:
Input
hello anna
Output
anna
-}
import Data.List
main=interact$snd.maximum.map(\x->(length x,x)).filter p.s
s x=tail.inits=<<tails x
p x=x==reverse x
