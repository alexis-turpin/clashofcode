"""
The game mode is: REVERSE. You do not have access to the statement.
Test 1 -
Provided Input
-5 -13 42
Expected Output
42
Test 2 -
Provided Input
-1 -2 -3 -4 -5 6 -7 -8 -9 -10
Expected Output
6
Test 3 -
Provided Input
-1 0 -2
Expected Output
0
Test 4 -
Provided Input
-1 0 1
Expected Output
-1
"""
numbers = [int(x) for x in input().split()]
num_positive = sum(1 for x in numbers if x >= 0)
num_negative = len(numbers) - num_positive
if num_positive < num_negative:
    x = next(x for x in numbers if x >= 0)
else:
    x = next(x for x in numbers if x < 0)
print(x)
