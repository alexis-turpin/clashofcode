{-
A palindrome is a piece of text where the order of the letters stay the same whether you read from left to right or right to left.

Your program must output whether, for each word given on the standard input, where it is a palindrome or not.

A single letter is considered to be a palindrome.

INPUT:
Line 1: the number N of words
N next lines: a word W to analyze

OUTPUT:
For each word, true if W is a palindrome, false otherwise.

CONSTRAINTS:
W only contains alphabetic letters in lowercase.

EXAMPLE:
Input
2
abcba
crab
Output
true
false
-}
main=interact$unlines.map(\x->if f x then"true"else"false").tail.lines
f x=x==reverse x
