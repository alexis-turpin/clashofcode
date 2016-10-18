{-
You program must output the smallest prime factor of N.
If N equals 0 or 1 you program must output NONE

Example :
15 = 3 * 5 , 3 and 5 are both prime and 3 is the smallest so the result is 3.

INPUT:
Line 1: An integer N

OUTPUT:
Line 1 : The smallest prime factor of N

CONSTRAINTS:
0 ≤ N ≤ 2000000

EXAMPLE:
Input
15
Output
3
-}
main=interact$a.read
a x|x<2="NONE"|True=show$head$filter(f x)$s[2..]where s(p:r)=p:s[x|x<-r,x`rem`p>0]
f n x=n`rem`x==0
