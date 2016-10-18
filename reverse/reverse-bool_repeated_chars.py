"""
The game mode is: REVERSE. You do not have access to the statement.
Test 1 -
Provided Input
Hello
Expected Output
true
Test 2 -
Provided Input
Water
Expected Output
false
Test 3 -
Provided Input
Happen
Expected Output
true
Test 4 -
Provided Input
Hitchhiker
Expected Output
true
Test 5 -
Provided Input
Galaxy
Expected Output
false
Test 6 -
Provided Input
Codingame
Expected Output
false
Test 7 -
Provided Input
Aa
Expected Output
true
"""
#
# 100% passing for local tests, but only 85% using the final validators.
#
from __future__ import division
import math


word = raw_input().lower()

middle_index = int(math.ceil(len(word) / 2))
condition = word[:middle_index][-1] == word[middle_index:][0]

print str(bool(condition)).lower()


#
# I thought that this was the solution, but it didn't pass all the local tests.
#

import collections


word = raw_input().lower()

counter = collections.Counter()
condition = any(value > 1 for value in counter.itervalues())

print str(bool(condition)).lower()
