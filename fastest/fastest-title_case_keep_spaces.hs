{-
Your program must output the string given as input with converted case. All words must start with an uppercase letter and the remaining letters must be in lowercase.

A word can be one letter long and multiple spaces can separate the words.

INPUT:
A string S.

OUTPUT:
A string containing a title case version of S.

CONSTRAINTS:
S contains at least 1 word.
S contains only alphabetical characters and spaces.
S contains less than 1000 characters.

EXAMPLE:
Input
heLLo world
Output
Hello World
-}
import Data.Char
import Data.List.Split

main = interact $ unwords . map titleCase . splitOn " "

titleCase (x:xs) = toUpper x : map toLower xs
titleCase x = x
