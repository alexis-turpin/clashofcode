"""
The game mode is: REVERSE. You do not have access to the statement.
Test 1 -
Provided Input
4
5 4 1 7
Expected Output
4
Test 2 -
Provided Input
5
2 4 6 7 8
Expected Output
7
Test 3 -
Provided Input
6
13 0 6 4 14 20
Expected Output
13
Test 4 -
Provided Input
5
0 3 5 7 9
Expected Output
0
Test 5 -
Provided Input
4
-5 -13 42 1
Expected Output
42
"""
n = int(raw_input())
inputs = [int(x) for x in raw_input().split()]

num_even = sum(x % 2 == 0 for x in inputs)
num_odd = sum(x % 2 == 1 for x in inputs)

if num_even > num_odd:
    diff = 1
else:
    diff = 0
print next(x for x in inputs if x % 2 == diff)
