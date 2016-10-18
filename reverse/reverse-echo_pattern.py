"""
The game mode is: REVERSE. You do not have access to the statement.
Test 1 -
Provided Input
-----
Expected Output
-----
 ---
  -
 ---
-----
Test 2 -
Provided Input
***
Expected Output
***
 *
***
Test 3 -
Provided Input
XXXXXXX
Expected Output
XXXXXXX
 XXXXX
  XXX
   X
  XXX
 XXXXX
XXXXXXX
Test 4 -
Provided Input
aaaaaaaaa
Expected Output
aaaaaaaaa
 aaaaaaa
  aaaaa
   aaa
    a
   aaa
  aaaaa
 aaaaaaa
aaaaaaaaa
"""
s = raw_input()

xs = [s[:x].center(len(s)).rstrip() for x in xrange(1, len(s) + 1, 2)]
xs = xs[::-1] + xs[1:]

print '\n'.join(xs)
