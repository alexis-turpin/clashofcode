"""
The game mode is: REVERSE. You do not have access to the statement.
Test 1 -
Provided Input
169 104
Expected Output
13
Test 2 -
Provided Input
100 250
Expected Output
50
Test 3 -
Provided Input
1 1
Expected Output
1
Test 4 -
Provided Input
1000000 5
Expected Output
5
Test 5 -
Provided Input
104711 104717
Expected Output
1
Test 6 -
Provided Input
98304 65536
Expected Output
32768
"""
#
# I wasn't able to determine the pattern in the given time.
#
import math


a, b = [int(i) for i in raw_input().split()]
print int(math.floor((a * b) ** .5)) / 10
