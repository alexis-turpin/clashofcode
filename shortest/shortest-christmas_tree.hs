{-
It's Christmas !
Display a pretty tree depending on its height N given on standard input.
The tree is made of N + 1: N for its branches and a one for its trunk

To get your tree correctly centered, each stage of the tree must be composed of an odd number of stars.
Fill in the empty space with points.

INPUT:
Line 1: an integer N (number of stages of the tree).

OUTPUT:
N lines: the tree branches (as many lines as the tree height).
Last line: the tree trunk.

These lines must only be made of points and stars.

CONSTRAINTS:
1 ≤ N ≤ 20

EXAMPLE:
Input
4
Output
....*....
...***...
..*****..
.*******.
....*....
-}
main=do;n<-readLn::IO Int;putStr$unlines$c n
c n=map(b w)[1..n]++[b w 1]where w=o!!n
b w k=s++replicate t '*'++s where s=replicate ((w-t)`div`2)'.';t=o!!(k- 1)
o=[1,3..]
