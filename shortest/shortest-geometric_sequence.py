"""
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
 

Download the files provided in the test script:
Example: IN / OUT
3 2: IN / OUT
5 3: IN / OUT
6 3: IN / OUT
3 0: IN / OUT
"""
n,r=[int(x) for x in raw_input().split()]
print ' '.join(str(r**x) for x in range(n))
