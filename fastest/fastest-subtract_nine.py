"""
Your program must create the lowest integer from the input with the choice of subtracting each digit from 9 or not.

For example, 17 can become 12 by replacing the digit 7 by 2 (because 9 - 7 = 2).

INPUT:
Line 1 : One integer N.

OUTPUT:
Ligne 1 : One integer.

CONSTRAINTS:
0 ≤ N ≤ 10000

EXAMPLE:
Input
169
Output
130
"""
n = input()
xs = str(n)
out = []
for x in xs:
    x = int(x)
    if abs(x - 9) <= x:
        out.append(str(abs(x - 9)))
    else:
        out.append(str(x))
print(int(''.join(out)))
