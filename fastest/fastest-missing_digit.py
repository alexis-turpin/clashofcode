"""
Your program must display the missing digit for each line.

INPUT:
Line 1 : An integer N, the number of lines to read.
N next lines : A string line of 9 digits without spaces.

OUTPUT:
Line 1 : The missing digit.

CONSTRAINTS:
0 < N < 1000

EXAMPLE:
Input
1
123456789
Output
0
 

Download the files provided in the test script:
Example: in.txt out.txt
Test 1: in.txt out.txt
Test 2: in.txt out.txt
Test 3: in.txt out.txt
"""
DIGITS = set(str(x) for x in range(10))

n = int(raw_input())
for i in xrange(n):
    line = raw_input()
    chars = set(line)
    print ''.join(DIGITS.symmetric_difference(chars))
