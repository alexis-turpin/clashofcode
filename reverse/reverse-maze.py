"""
Statement
The program:
The game mode is: REVERSE. You do not have access to the statement.
Test 1 -
Provided Input
0 1
5 5
#####
..###
#.###
#..##
##.##
Expected Output
2 4
Test 2 -
Provided Input
0 1
3 3
###
...
###
Expected Output
2 1
Test 3 -
Provided Input
0 1
5 5
#####
..###
#.###
#....
#####
Expected Output
4 3
Test 4 -
Provided Input
0 1
5 5
##...
..###
#.#..
#...#
.###.
Expected Output
4 2
Test 5 -
Provided Input
5 4
9 5
..###.###
##...#...
...#..##.
###.#.#..
....#.#..
Expected Output
0 2
"""
# XXX: Unfortunately time elapsed before I got this working. I spent
#   more time than I would've liked figuring out the objective because
#   the monospaced font made it more difficult to see / count things.
import sys


x, y = [int(i) for i in raw_input().split()]
width, height = [int(i) for i in raw_input().split()]

a = []
for i in xrange(height):
    a.append(raw_input())


def options(x, y):
    o = []
    for off_x, off_y in zip(range(-1, 2), range(-1, 2)):
        if off_x == off_y == 0:
            continue
        new_x = x + off_x
        new_y = y + off_y
        if new_x < 0 or new_y < 0:
            continue
        try:
            c = a[new_x][new_y]
        except:
            continue
        if c == '.':
            o.append((new_x, new_y))
    print >> sys.stderr, (x, y), o
    return o


# XXX: Maybe I should have added `(x, y)` to `seen` before starting!
seen = set()
opt = options(x, y)
while opt:
    for new_x, new_y in opt:
        if (new_x, new_y) in seen:
            continue
        seen.add((new_x, new_y))
        x, y = (new_x, new_y)
        opt = options(x, y)
print x, y
