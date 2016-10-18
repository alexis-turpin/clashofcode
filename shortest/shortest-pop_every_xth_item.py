"""
You program must iterate over a circular list and, every X elements, remove and print the current element until the list is empty. The list contains the integers from 1 to N.

For example. let N=5 and X = 2. For the sake of clarity, we insert in list the element # that represents the current position. Initially, the list is [#, 1, 2, 3, 4, 5]. Here are the successive steps:
Removing of 2, the list becomes [1,#, 3,4,5].
Removing of 4, the list becomes [1,3,#,5].
Removing of 1, the list becomes [#,3,5].
Removing of 5, the list becomes [3,#].
Removing of 3, the list becomes empty.
The program must then display the integers in the order: 2, 4, 1, 5 and 3.

INPUT:
Line 1: One integer N.
Line 2: One integer X.

OUTPUT:
N lines: The integer removed from the list (every X item of the circular list from 1 to N).

CONSTRAINTS:
0 < N < 1000
0 < X < 1000

EXAMPLE:
Input
5
2
Output
2
4
1
5
3
 

Download the files provided in the test script:
Example: IN / OUT
10 1: IN / OUT
10 3: IN / OUT
6 10: IN / OUT
"""
# Broken: prints '2,4,1,3,5' (last two switched), and isn't minified yet.
import itertools as i
n=range(1,input()+1)
x=input()
s=set(n)
n=i.cycle(n)
while s:
    for _ in range(x): i=next(n)
    while i not in s:
        i=next(n)
    print i
    s.remove(i)
