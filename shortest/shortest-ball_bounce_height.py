"""
Statement
The program:
A ball is dropped and bounces. At each rebound, the ball reaches half the height of the previous rebound.

How high the ball must be dropped so it reaches exactly the height H after the sixth rebound?

INPUT:
An integer H, the height reached by the ball after the sixth rebound.

OUTPUT:
The height at which we must drop the ball.

CONSTRAINTS:
1 ≤ H ≤ 10000

EXAMPLE:
Input
5
Output
320
 

Download the files provided in the test script:
Example: in.txt out.txt
Minimum: in.txt out.txt
Example 2: in.txt out.txt
Example 3: in.txt out.txt
Maximum: in.txt out.txt
"""
print input()*64


h=input()
for _ in range(6):h*=2
print h


h = input()
for _ in range(6):
    h *= 2
print h
