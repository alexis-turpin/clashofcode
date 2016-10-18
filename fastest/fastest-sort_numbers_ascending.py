n = int(raw_input())
inputs = [int(x) for x in raw_input().split()]
print ' '.join(str(x) for x in sorted(inputs))
