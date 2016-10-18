n_1, n_2 = raw_input().split()
out = []
for a, b in zip(n_1, n_2):
    if '0' in [a, b]:
        out.append('0')
    else:
        out.append('1')
print ''.join(out)
