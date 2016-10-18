"""
Statement
The program:
Your program must decipher the given message encrypted with a rotation by N, meaning that each letter has been shifted by N letters down the alphabet.
For example, a rotation-2 on the string "bac" would yield "dce".
Non alphabetical characters remain unchanged.

INPUT:
Line 1: N an integer. The shift amount.
Line 2: A string S encrypted with rotation-N.

OUTPUT:
The deciphered version of S.

CONSTRAINTS:
0 ≤ N ≤ 26
S contains at least 1 character.

EXAMPLE:
Input
3
Khoor Zruog!
Output
Hello World!
 

Download the files provided in the test script:
Example: in.txt out.txt
Alphabet: in.txt out.txt
Lowercase and uppercase: in.txt out.txt
Special characters: in.txt out.txt
"""
n = int(raw_input())
s = raw_input()

lower = [chr(x) for x in range(ord('a'), ord('z') + 1)]
upper = [chr(x) for x in range(ord('A'), ord('Z') + 1)]

out = []
for c in s:
    if not c.isalpha():
        out.append(c)
        continue
    if c in lower:
        new = lower[lower.index(c) - n]
    else:
        new = upper[upper.index(c) - n]
    out.append(new)

print ''.join(out)
