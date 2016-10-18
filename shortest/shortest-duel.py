a,b=[int(i) for i in raw_input().split()]
c,e= [int(i) for i in raw_input().split()]
r=0
while a > 0 and c > 0:
 a-=e
 c-=b
 r+=1
print '1'if a>=1 else'2', r


# hp1, d1 = [int(i) for i in raw_input().split()]
# hp2, d2 = [int(i) for i in raw_input().split()]
# rounds = 0
# while hp1 > 0 and hp2 > 0:
#     hp1 -= d2
#     hp2 -= d1
#     rounds += 1
# winner = '1' if hp1 >= 1 else '2'
# print winner, rounds


# The below doesn't work as-is, but was another attempt.


import math
hp1, d1 = [int(i) for i in raw_input().split()]
hp2, d2 = [int(i) for i in raw_input().split()]
r1=math.ceil(hp1/d2)
r2=math.ceil(hp2/d1)
print ' '.join(str(x) for x in (('1', r2) if r1 > r2 else ('2', r1)))


import math
hp1, d1 = [int(i) for i in raw_input().split()]
hp2, d2 = [int(i) for i in raw_input().split()]
r1=math.ceil(hp1/d2)
r2=math.ceil(hp2/d1)
winner, rounds = ('1', r2) if r1 > r2 else ('2', r1)
print winner, rounds