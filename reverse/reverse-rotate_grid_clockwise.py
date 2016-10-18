"""Reverse
Statement
The program:
The game mode is: REVERSE. You do not have access to the statement.
Test 1 -
Provided Input
5 3
O...s
..x.s
O...s
Expected Output
O.O
...
.x.
...
sss
Test 2 -
Provided Input
5 5
..x..
.x.x.
.x.x.
.x.x.
..x..
Expected Output
.....
.xxx.
x...x
.xxx.
.....
Test 3 -
Provided Input
5 53
O...O
O...O
O.O.O
O.O.O
OOOOO
.....
OOOOO
.O...
..O..
.O...
OOOOO
.....
OOOOO
O.O..
O.O..
O.O..
OOOOO
.....
O.O..
O.OOO
O.O.O
O...O
OOOOO
.....
OOOOO
...O.
..O..
.O...
OOOOO
.....
O...O
O...O
OOOOO
O...O
O...O
.....
.OOO.
O...O
O...O
O...O
OOOOO
.....
OOOOO
O...O
O...O
O...O
OOOOO
.....
O...O
O...O
O...O
O...O
OOOOO
Expected Output
OOOOO.OOOOO.OOOO..OOOOO.O...O.OOOOO.OOOOO.O...O.OOOOO
O.....O...O.O...O...O...OO..O.O.....O...O.OO.OO.O....
O.....O...O.O...O...O...O.O.O.O.OOO.OOOOO.O.O.O.OOO..
O.....O...O.O...O...O...O..OO.O..O..O...O.O...O.O....
OOOOO.OOOOO.OOOO..OOOOO.O...O.OOOO..O...O.O...O.OOOOO
Test 4 -
Provided Input
5 5
x.x.x
abcde
.x.x.
dfgsd
,,,,,
Expected Output
,d.ax
,fxb.
,g.cx
,sxd.
,d.ex
Test 5 -
Provided Input
93 90
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!qwertyuiopasdfghjkl;zxcvbnm,.?!
Expected Output
qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq
wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr
tttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt
yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy
uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu
iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
pppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppp
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
ssssssssssssssssssssssssssssssssssssssssssssssss
"""
width, height = [int(i) for i in raw_input().split()]

rows = []
for i in xrange(height):
    rows.append(raw_input())

for column in xrange(width):
    output = []
    for row in xrange(height - 1, -1, -1):
        output.append(rows[row][column])
    print ''.join(output)
