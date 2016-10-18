"""
Your program must change the case of the given string. Except from the first word that must be written in lowercase, all the other words must start with an uppercase letter and the other letters must be written in lowercase. Also, all the spaces must be removed.

A word can be one letter long.

INPUT:
A string S.

OUTPUT:
A string containing a camel case version of S.

CONSTRAINTS:
S contains at least 1 word.
S contains only alphabetical characters and spaces.
S contains less than 256 characters.

EXAMPLE:
Input
Hello World
Output
helloWorld
 

Download the files provided in the test script:
Example: in.txt out.txt
ABCDEF g: in.txt out.txt
there is no spoon: in.txt out.txt
HaVe fUN And KEEP cOding: in.txt out.txt
"""
m = raw_input().lower()
xs = m.split()
xs[1:] = [x.title() for x in xs[1:]]
print ''.join(xs)
