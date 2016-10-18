"""
A pangram is a sentence that uses every letter of the alphabet at least once.

Your program must indicate whether the given string is a pangram or not.

INPUT:
S a string.

OUTPUT:
true if S is a pangram, false otherwise.

CONSTRAINTS:
S contains at least 1 character.
S contains less than 256 characters.
S contains only alphanumeric characters and spaces.

EXAMPLE:
Input
Abcde fghij klmno pqrs tuv wxyz
Output
true
 

Download the files provided in the test script:
Example: IN / OUT
this sentence does not have what it should: IN / OUT
Portez ce vieux whisky au juge blond qui fume: IN / OUT
abcde ghijklmnopqrstuvwxyz: IN / OUT
abcde fghij klmno pqrs tuv wxyy: IN / OUT
"""
s=input().replace(' ','')
a=0<len(s)<256and s.isalnum()and not set(chr(x)for x in range(97,123)).difference(s.lower())
print(str(a).lower())
