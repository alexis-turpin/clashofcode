x=[input() for _ in range(input())]
for y in x:print bin(y)[2:].replace('0','.').replace('1','-')


# import string
# x=[input() for _ in range(input())]
# for y in x:print bin(y)[2:].translate(string.maketrans('01', '.-'))
