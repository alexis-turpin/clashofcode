{-
Given a list of N numbers, either 1 or 0, you need to output the result of XORing over the list. To do so, you have to XOR all the elements two by two, starting at the beginning.

For example:
1 0 1 0 0 -> 1 1 0 0 -> 0 0 0 -> 0 0 -> 0

INPUT:
Line 1: The number N of elements in the list.
Line 2: A list of 1 and 0.

OUTPUT:
Line 1: Either 1 or 0 , the result of XORing over the list.

CONSTRAINTS:
1 ≤ N ≤ 10000

EXAMPLE:
Input
3
1 0 1
-}
import Data.Bits
main=do;getLine;x<-fmap(map read.words)getLine::IO[Int];print$a x
a=foldr1 xor
