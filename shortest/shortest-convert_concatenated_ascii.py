"""
Convert a string code of concatenated ASCII code numbers to the corresponding string of ASCII characters.

INPUT:
String of decimal numbers. Each number is 3 digits long and padded with zeroes.

OUTPUT:
The corresponding ASCII string.
If the input length is not a multiple of 3, then you should output the string ERROR.

CONSTRAINTS:
0 < Length of code ≤ 500
32 ≤ ASCII code ≤ 255

EXAMPLE:
Input
067111100105110103
Output
Coding
"""
# Python3.X solution (94 bytes)
s=input()
print([''.join(chr(int(s[x:x+3]))for x in range(0,len(s),3)),"ERROR"][len(s)%3!=0])
