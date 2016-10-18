"""
Your program must print the sum of the square of the numbers given as input.

INPUT:
Line 1: An integer N for the amount of numbers to use.
Line 2: A line containing N space-separated integers Xi.

OUTPUT:
The sum of the squares of the Xi numbers.

CONSTRAINTS:
0 < N < 100
-1000 < Xi < 1000

EXAMPLE:
Input
3
1 2 3
Output
14
 

Download the files provided in the test script:
Example: in.txt out.txt
3 3: in.txt out.txt
4 10: in.txt out.txt
2 2 2: in.txt out.txt
1 1 1: in.txt out.txt
10 10 10: in.txt out.txt
"""
n = int(raw_input())
inputs = [int(x) for x in raw_input().split()]
print sum(x ** 2 for x in inputs)
