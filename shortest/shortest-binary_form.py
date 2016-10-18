# This solutions will raise an error after completion of the test due to the infinite loop.
# You still get 100% success when you submit your code.

# Python2.X Solution (38 bytes)
input()
while 1:print bin(input())[2:]

# Python3.X Solution (44 bytes)
input()
while 1:print(bin(int(input()))[2:])

# Solutions without infinite loop
# Python2.X Solution (42 bytes)
for _ in'.'*input():print bin(input())[2:]

# Python3.X Solution (53 bytes)
for _ in'.'*int(input()):print(bin(int(input()))[2:])