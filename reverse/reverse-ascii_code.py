"""
Statement
The program:
The game mode is: REVERSE. You do not have access to the statement.
Test 1 -
Provided Input
11
72 101 108 108 111 32 87 111 114 108 100
Expected Output
Hello World
Test 2 -
Provided Input
9
67 48 100 105 110 71 64 109 101
Expected Output
C0dinG@me
Test 3 -
Provided Input
42
68 111 110 39 116 32 67 114 117 115 104 32 84 104 97 116 32 68 119 97 114 102 44 32 72 97 110 100 32 77 101 32 116 104 101 32 80 108 105 101 114 115
Expected Output
Don't Crush That Dwarf, Hand Me the Pliers
Test 4 -
Provided Input
1
32
Expected Output
"""
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

char_count = int(raw_input())
inputs = raw_input().split()
output = []  # Not auto added.
for i in xrange(char_count):
    char_code = int(inputs[i])
    output.append(chr(char_code))  # Not auto added.

print ''.join(output)  # Not auto added.
