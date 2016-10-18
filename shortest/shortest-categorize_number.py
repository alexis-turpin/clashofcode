"""
Your program must determine in which category belongs a given integer. The possible integers are named intervals that are also given. 
The intervals do not overlap.
The integer always belongs to a category.

INPUT:
Line 1: X the integer to categorize.
Line 2: N an integer for the number of categories.
Next N lines: Two integers F and T for the inclusive bounds of the interval, followed by a word category, its name.

OUTPUT:
The name of the category with the interval that contains X.

CONSTRAINTS:
0 < N < 100
-1000 ≤ F ≤ T ≤ 1000
F ≤ X ≤ T

EXAMPLE:
Input
10
3
-1000 -1 negative
0 0 null
1 1000 positive
"""
x=int(input())
n=int(input())
c=[input().split()for _ in range(n)]
c=[(int(f),int(t),c) for f,t,c in c]
for s,t,a in c:
 if s<=x<=t:print(a)
