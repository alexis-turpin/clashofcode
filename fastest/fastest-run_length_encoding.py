"""
Run length encoding

abbcccdddd -> 1a2b3c4d
"""
s = raw_input()
out = []
current = s[0]
count = 1
for c in s[1:]:
    if c == current:
        count += 1
    else:
        out.append(count)
        out.append(current)
        count = 1
        current = c
out.append(count)
out.append(current)

print ''.join(str(x) for x in out)
