{-
Your program must prepare a sentence for encryption and reshape it in a grid.

You are given a sentence and a number of columns col.

First, you need to remove all whitespaces.
Then divide the processed text into parts of col characters each.
The last part can contain less than col letters.

Each part is placed on the new line.

INPUT:
Line 1: a text sentence.
Line 2: an integer number col.

OUTPUT:
The text grid with col columns.

CONSTRAINTS:
0 ≤ sentence length ≤ 100
0 < col ≤ 10
A text contains at least one non-whitespace character.

EXAMPLE:
Input
Hello Perfect World
5
Output
Hello
Perfe
ctWor
ld
-}
import Data.List.Split
main=do;s<-getLine;c<-readLn::IO Int;putStr$unlines$chunksOf c$concat$words s
