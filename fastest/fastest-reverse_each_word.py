xs = raw_input()
print(''.join(list(x)[::-1]) for x in xs)


#######################################################################


print ' '.join(''.join(reversed(x)) for x in raw_input().split())
