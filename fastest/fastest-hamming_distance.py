"""
The Hamming distance between two strings of equal length is defined as the minimum number of 1-letter permutations to get from one string to the other.

For example, BINGO and BANKS have a distance of 3:
BINGO: 0 permutations.
BANGO: 1 permutation.
BANKO: 2 permutations.
BANKS :3 permutations.

Your program must read 2 words of the same length from the standard input and write to the standard output the Hamming distance between the two.

INPUT:
2 space-separated words word1 and word2.

OUTPUT:
An integer for the Hamming distance between word1 and word2.

CONSTRAINTS:
word1 and word2 contain only lowercase letters.

EXAMPLE:
Input
bring sling
Output
2
"""
word_1, word_2 = raw_input().split()

count = 0
for c1, c2 in zip(word_1, word_2):
    if c1 != c2:
        count += 1

print count


#
# The below was from making the problem more complicated than it is.
#

import collections
import sys


word_1, word_2 = raw_input().split()

word_1 = collections.Counter(word_1)
word_2 = collections.Counter(word_2)

print >> sys.stderr, word_1
print >> sys.stderr, word_2

word_1.subtract(word_2)

print >> sys.stderr, word_1

print sum(abs(value) for value in word_1.itervalues()) / 2
