"""
You must output the minimum number of bits required to code given numbers.

INPUT:
Line 1: An integer N for the number of tests.
N Following lines: An integer X which represents a number to process.

OUTPUT:
For each number to process, the minimum number of bits required to code it.

CONSTRAINTS:
0 < N < 100
0 ≤ X < 1000

EXAMPLE:
Input
2
1
6
Output
1
3
"""
n = int(input())
for i in range(n):
    x = int(input())
    if not x:
        print(1)
        continue
    bits = 0
    while x:
        x = x >> 1
        bits += 1
    print(bits)
