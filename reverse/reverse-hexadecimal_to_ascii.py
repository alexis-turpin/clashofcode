"""
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
12
48 65 6C 6C 6F 20 77 6F 72 6C 64 21
Hello world!
02 Test 2
16
43 6F 64 69 6E 47 61 6D 65 20 72 6F 63 6B 27 73
CodinGame rock's
03 Test 3
37
54 68 65 20 48 69 74 63 68 68 69 6B 65 72 27 73 20 47 75 69 64 65 20 74 6F 20 74 68 65 20 47 61 6C 61 78 79 2E
The Hitchhiker's Guide to the Galaxy.
04 Test 4
36
61 62 63 64 65 66 67 68 69 6A 6B 6C 6D 6E 6F 70 71 72 73 74 75 76 77 78 79 7A 30 31 32 33 34 35 36 37 38 39
abcdefghijklmnopqrstuvwxyz0123456789
"""
value_count = int(input())
print(''.join([chr(int(x, 16)) for x in input().split()]))
