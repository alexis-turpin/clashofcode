import sys
import math

# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

hp1, d1 = [int(i) for i in raw_input().split()]
hp2, d2 = [int(i) for i in raw_input().split()]

rounds = 0
while hp1 > 0 and hp2 > 0:
    hp1 -= d2
    hp2 -= d1
    rounds += 1

if hp1 >= 1:
    winner = '1'
else:
    winner = '2'

print winner, rounds
