{-
A geometric sequence, is a sequence of numbers where each term after the first is found by multiplying the previous one by a number called the common ratio.

Your program must print the N first numbers of a geometric sequence of ratio R and started by 1.

INPUT:
Two space separated integers N and R.

OUTPUT:
The first N integers of the geometric sequence of common ratio R, starting with 1.

CONSTRAINTS:
0 < N < 50
0 ≤ R ≤ 50
Each integer of the suite can hold in a 64 bits integer.

EXAMPLE:
Input
5 2
Output
1 2 4 8 16
-}
main=do;[n,r]<-fmap(map read.words)getLine::IO[Int];putStrLn$unwords$map show$g n r
g n r=take n$map(r^)[0..]
