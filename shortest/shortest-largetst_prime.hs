{-
You must output the largest prime of the given list of numbers.

INPUT:
Line 1: an integer N
Next N lines: an integer M

OUTPUT:
Line 1: The largest prime from the given input.

CONSTRAINTS:
1 ≤ N ≤ 100
0 ≤ M ≤ 1000

EXAMPLE:
Input
4
1
2
3
4
Output
3
-}
main=interact$show.maximum.filter t.map read.tail.lines
t x=elem x$takeWhile(<=x)$s[2..]where s(p:r)=p:s[x|x<-r,x`rem`p>0]
