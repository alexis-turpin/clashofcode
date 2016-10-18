{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
9
1
3
5
7
9
02 Test 2
101
1
3
5
7
9
11
13
15
17
19
21
23
25
27
29
31
33
35
37
39
41
43
45
47
49
51
53
55
57
59
61
63
65
67
69
71
73
75
77
79
81
83
85
87
89
91
93
95
97
99
101
03 Test 3
20
1
3
5
7
9
11
13
15
17
19
04 Test 4
2
1
-}
main = interact (unlines . map show . oddUpTo . read)

oddUpTo :: Int -> [Int]
oddUpTo x = [1,3..x]
