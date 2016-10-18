{-
Given an integer N output the Nth row of the Pascal's Triangle.

Hint: each element in the Nth row of the Pascal's Triangle can be represented by C(n, k), where n is the row (starting from 0), C is the choose function: (n!) /((k!) * (n-k)!), and k is the k-th element of the row (! represents the factorial).

Here's begin of the Pascal's triangle:
Row 0: 1
Row 1: 1 1
Row 2: 1 2 1
Row 3: 1 3 3 1

Here it is in C(n,k) form:
Row 0: C(0,0)
Row 1: C(1,0) C(1,1)
Row 2: C(2,0) C(2,1) C(2,2)
Row 3: C(3,0) C(3,1) C(3,2) C(3,3)

INPUT:
Line 1: An integer N to represent the row number of Pascal's Triangle (which starts at row 0).

OUTPUT:
Line 1: Row N of Pascal's Triangle, separated by one space ' ' character.

CONSTRAINTS:
N < 20

EXAMPLE:
Input
4
Output
1 4 6 4 1
-}
-- Modified from the `fastest` variant.
main=interact r
r s=unwords$map show$take(n+1)$map(round.c(fromIntegral n))[0..]where n=read s
c _ 0=1
c n k=c n(k-1)*((n+1-k)/k)
