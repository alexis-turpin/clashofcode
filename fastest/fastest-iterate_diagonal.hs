{-
You are given a text grid of size N by N.

Your program must choose words which are placed on the main and the secondary diagonals of the given grid.

The main diagonal is laid from the top-left to the bottom-right corner.
The secondary diagonal is laid from the top-right to the bottom-left corner.​

INPUT:
Line 1: An integer number N representing the grid size.
Next N lines: N characters.

OUTPUT:
Two words from the diagonals separated by a whitespace.

CONSTRAINTS:
0 < N ≤ 10
A grid contains only latin lowercase letters.

EXAMPLE:
Input
4
mooa
oano
otio
ioon
Output
main anti
-}
main :: IO ()
main = interact $ diagonal . tail . lines

diagonal xs = unwords [left, right]
  where
    left  = f $ zip xs [0..]
    right = reverse $ f $ zip (reverse xs) [0..]
    f = map (\(a, b) -> a !! b)
