{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
4
10:15:46
03:59:08
04:00:08
03:59:09
03:59:08
02 Test 2
1
23:59:59
23:59:59
03 Test 3
5
11:11:11
01:01:01
13:00:00
00:00:00
09:59:59
00:00:00
04 Test 4
10
15:41:24
21:40:40
05:27:01
13:37:33
07:40:36
08:03:28
03:46:47
20:05:22
04:04:57
04:34:40
03:46:47
05 Test 5
10
19:56:21
13:10:22
02:07:12
23:29:57
19:21:43
16:40:14
15:17:31
07:37:35
12:50:16
16:37:28
-}
main :: IO ()
main = interact findTime

findTime = minimum . drop 1 . lines
