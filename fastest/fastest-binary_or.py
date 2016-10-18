n_1, n_2 = raw_input().split()
out = []
for a, b in zip(n_1, n_2):
    if '1' in [a, b]:
        out.append('1')
    else:
        out.append('0')
print ''.join(out)
