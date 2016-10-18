{-
You are given a list of integers and a list of inclusive ranges a, b. Print the sum of the integers for each range (the sum of all the values with an index between a and b).

INPUT:
Line 1: the number N of integers in the list.
Line 2: N space-separated integers from -100 to 100.
Line 3: the number M of ranges.
M next lines: two space-separated integers startRange and endRange. The first element of the list is at index 0.

OUTPUT:
M lines: for each range, the sum of the integers.

CONSTRAINTS:
0 < N < 100
0 < M < 100

EXAMPLE:
Input
4
4 2 5 8
3
0 3
1 2
3 3
-}
import Control.Monad
main=do
 getLine
 l<-getLine
 let xs=map read$words l::[Int]
 m<-readLn::IO Int
 replicateM_ m$do
  l<-getLine
  let[s,t]=map read$words l::[Int]
  print$sum$take(t-s+1)$drop s xs
