"""
The game mode is: REVERSE. You do not have access to the statement.
Test 1 -
Provided Input
8372?9514
Expected Output
6
Test 2 -
Provided Input
981453?67
Expected Output
2
Test 3 -
Provided Input
318?92657
Expected Output
4
Test 4 -
Provided Input
1234?6789
Expected Output
5
"""
s = raw_input()
print ''.join(set(s).difference('?').symmetric_difference(str(x) for x in range(1, 10)))
