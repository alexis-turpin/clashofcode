"""
The game mode is: REVERSE. You do not have access to the statement.
Test 1 -
Provided Input
2
abcba
crab
Expected Output
true
false
Test 2 -
Provided Input
2
crab
crab
Expected Output
false
false
Test 3 -
Provided Input
2
radar
crab
Expected Output
true
false
Test 4 -
Provided Input
3
sonar
crab
radar
Expected Output
false
false
true
Test 5 -
Provided Input
4
sonar
crab
radar
evitative
Expected Output
false
false
true
true
"""
n = int(raw_input())
for i in xrange(n):
    w = raw_input()
    answer = w == w[::-1]
    print str(answer).lower()
