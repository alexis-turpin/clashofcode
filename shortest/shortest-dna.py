"""
Statement
The program:
A DNA strand is composed of a series of nucleobases commonly referred to as A, C, T and G.
Every strand has a complementary strand which presents the complementary nucleobase for each one found on the first strand.

Reminder :
A is complementary to T.
C is complementary to G.

Your program must read a DNA sequence from the standard input and print the complementary sequence to the standard output.

INPUT:
DNA a string containing characters from A, C, G and T.

OUTPUT:
A single line containing the complementary DNA sequence to DNA (A<=>T and C<=>G).

CONSTRAINTS:
DNA contains at least 1 character.
DNA contains less than 1024 characters.

EXAMPLE:
Input
ACGT
Output
TGCA
 

Download the files provided in the test script:
Example: in.txt out.txt
A: in.txt out.txt
C: in.txt out.txt
G: in.txt out.txt
T: in.txt out.txt
GATTACA: in.txt out.txt
"""
# Original Python2.X Solution (75 Bytes)
import string
print raw_input().translate(string.maketrans('ACTG','TGAC'))

# Python3.X Solution (56 Bytes)
print(*['TGAC'['ACTG'.index(a)]for a in input()],sep="")
