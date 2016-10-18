"""
The  (or Collatz) suite is defined as follows: given an initial integer greater than 0, we apply the following operations while the integer is different that 1:
- it is divided by 2 when even,
- it is multiplied by 3 and raised by 1 when odd.

Your program must display the Syracuse suite of the number N and stop when the value 1 is reached.

INPUT:
Line 1: An integer N that starts the suite.

OUTPUT:
Line 1: The values of the Syracuse suite, separated by a space.

CONSTRAINTS:
1 ≤ N < 100

EXAMPLE:
Input
5
Output
5 16 8 4 2 1
 

Download the files provided in the test script:
Example: in.txt out.txt
Test 2: in.txt out.txt
Test 3: in.txt out.txt
Test 4: in.txt out.txt
Test 5: in.txt out.txt
"""
n = int(raw_input())
numbers = [n]
while n != 1:
    if n % 2 == 0:
        n /= 2
    else:
        n *= 3
        n += 1
    numbers.append(n)

print ' '.join(str(x) for x in numbers)
