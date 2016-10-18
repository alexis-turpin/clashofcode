{-
Your program must sort items by their distance to the camera, and output the result from furthest to closest.
No two items have the same distance.

INPUT:
Line 1: N an integer for the number of items to sort.
Next N lines: A unique word item and a number distance to one decimal place, separated by a space.

OUTPUT:
One line containing the N item words sorted by their distance in descending order, separated by spaces.

CONSTRAINTS:
0 < N < 100
0.0 < distance < 100.0

EXAMPLE:
Input
3
tree 1.0
mountain 2.0
person 0.5
-}
import Data.List
main=interact a
a=unwords.map snd.reverse.sort.map(t.words).drop 1.lines
t[c,d]=(read d,c)::(Float,String)
