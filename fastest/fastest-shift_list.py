"""
Your program must output the input word after shifting its letters. Letters whose index would be negative are placed at the end of the word. The shift amount can be greater than the length of the word, in that case it loops.

INPUT:
Line 1: The number N of shift to the left to apply.
Line 2: The word word you must shift.

OUTPUT:
Line 1: The shifted word.

CONSTRAINTS:
0 < N < 10

EXAMPLE:
Input
5
breakfast
Output
fastbreak
 

Download the files provided in the test script:
Example: IN / OUT
2: IN / OUT
3: IN / OUT
4: IN / OUT
5: IN / OUT
"""
# Maybe there's a better way to do this with indexing.
n = int(raw_input())
word = [c for c in raw_input()]
for _ in xrange(n):
    word[:] = word[1:] + [word[0]]
print ''.join(word)
