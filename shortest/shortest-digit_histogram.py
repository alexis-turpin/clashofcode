"""
Given a series of data samples, you must draw a histogram of the samples.

INPUT:
Line 1: N the number of values.
Line 2: N sample value separated by spaces.

OUTPUT:
9 lines: for i from 1 to 9, the digit i, a colon(:), and a series of V asterisks, where V is the number of occurrences of i in the data series.

CONSTRAINTS:
1<=N<=100
1<=sample value<=9

EXAMPLE:
Input
2
1 8
Output
1:*
2:
3:
4:
5:
6:
7:
8:*
9:
"""
# Python3.X Solution (95 Bytes)
input()
x,v=list(map(int,input().split())),0
while v<10:print(str(v)+':'+'*'*x.count(v));v+=1
