"""
Statement
The program:
The game mode is: REVERSE. You do not have access to the statement.
Test 1 -
Provided Input
@#%
3
T@wn
D#nse Cr%wd
Cr#m#n#l M@st@m@nd
Expected Output
1
2
6
Test 2 -
Provided Input
abcdefgh
1
Hello World
Expected Output
2
Test 3 -
Provided Input
ABCDEFGH
1
Hello World
Expected Output
1
Test 4 -
Provided Input
Destroy();
3
var killFunc = function(param) {
  param.destroy();
};
Expected Output
6
10
1
Test 5 -
Provided Input
<$%*!§}
4
This
place is
quite safe
from criminals
Expected Output
0
0
0
0
"""
letters = set(raw_input())
n = int(raw_input())
for i in xrange(n):
    count = 0
    area = raw_input()
    for each_char in area:
        if each_char in letters:
            count += 1
    print count
