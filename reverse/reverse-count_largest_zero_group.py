"""
The game mode is: REVERSE. You do not have access to the statement.
Test 1 -
Provided Input
100020300001
Expected Output
4
Test 2 -
Provided Input
1000000000
Expected Output
9
Test 3 -
Provided Input
0
Expected Output
1
Test 4 -
Provided Input
123456789
Expected Output
0
Test 5 -
Provided Input
10000000000000000
Expected Output
16
Test 6 -
Provided Input
1020304050
Expected Output
1
Test 7 -
Provided Input
1000600007000000
Expected Output
6
"""
xs = raw_input()
max_count = 0
count = 0
for x in xs:
    if x == '0':
        count += 1
    else:
        if count > max_count:
            max_count = count
        count = 0
if count > max_count:
    max_count = count
print max_count
