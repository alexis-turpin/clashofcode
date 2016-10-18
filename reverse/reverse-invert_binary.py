"""
The game mode is: REVERSE. You do not have access to the statement.
Test 1 -
Provided Input
0
Expected Output
1
Test 2 -
Provided Input
001
Expected Output
110
Test 3 -
Provided Input
011
Expected Output
100
Test 4 -
Provided Input
00000000000111
Expected Output
11111111111000
"""
print ''.join('1' if c == '0' else '0' for c in raw_input())
