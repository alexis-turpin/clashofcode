"""
Your program must calculate the sum of even digits in a number N.

As an example, for 120789466, the result is 2+8+4+6+6=26.

INPUT:
An integer number N

OUTPUT:
An integer number, the sum of even digits in N.

CONSTRAINTS:
0 ≤ N < 2^32

EXAMPLE:
Input
120789466
Output
26
 

Download the files provided in the test script:
Example Test: in.txt out.txt
Single Digit: in.txt out.txt
No even digit: in.txt out.txt
Only even digits: in.txt out.txt
A lot of zeroes: in.txt out.txt
Zero: in.txt out.txt
Large number: in.txt out.txt
"""
print sum(int(x)for x in raw_input()if int(x)%2==0)
