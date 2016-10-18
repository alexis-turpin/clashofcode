{-
Given a certain number of blocks N, your program must return the height of the tallest possible 2D pyramid that can be created, followed by the number of unused blocks remaining.

For example, a pyramid of height 3 contains 6 blocks: 3 for the first level, 2 for the second level and 1 for the last level.

INPUT:
Line 1: An integer N, the number of blocks to be used for the pyramid.

OUTPUT:
Line 1: Two integers H and R, where H is the greatest possible pyramid height, and R is the remaining unused blocks.

CONSTRAINTS:
0 ≤ N < 50000

EXAMPLE:
Input
10
Output
4 0
-}
main=do;n<-readLn::IO Int;putStr$a n
a n=unwords$map show$(\(s,h)->[h,n-s])$last$takeWhile((<=n).fst)$zip(scanl(+)0[1..])[0..]
