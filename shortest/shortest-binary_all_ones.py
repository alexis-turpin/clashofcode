"""
Your program must display "true" if the binary representation of the number only contains 1's. Otherwise, print "false".

INPUT:
Line 1: A positive integer N.

OUTPUT:
Line 1: Une chaîne de caractère "true" ou "false"

CONSTRAINTS:
0 < N < 2 000 000

EXAMPLE:
Input
3
Output
true
 

Download the files provided in the test script:
3: IN / OUT
5: IN / OUT
7: IN / OUT
31: IN / OUT
1023: IN / OUT
"""
print str(set(bin(input())[2:])=={'1'}).lower()
