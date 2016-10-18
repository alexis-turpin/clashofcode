"""
The game mode is: REVERSE. You do not have access to the statement.
Test 1 -
Provided Input
I am
Expected Output
3
Test 2 -
Provided Input
I like trains
Expected Output
11
Test 3 -
Provided Input
Hello world!
Expected Output
10
Test 4 -
Provided Input
Cod1nGam3
Expected Output
7
Test 5 -
Provided Input
message[0]
Expected Output
7
Test 6 -
Provided Input
01100010
Expected Output
0
"""
message = raw_input()
print sum(1 for c in message if c.isalpha())
