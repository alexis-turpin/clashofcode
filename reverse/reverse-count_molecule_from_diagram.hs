{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
1
@-|4|-@
1
02 Test 2
3
   /-|10|-\
@-<        >-@
   \-|10|-/
2
03 Test 3
1
@-|7|--|18|--@
2
04 Test 4
1
@-|20||10|-@
2
05 Test 5
3
           /-|8|-\
@-\       /       \-@
   \-|7|-/
2
06 Test 6
7
       /-|30|-\
    /-<        >-\
   /   \-|20|-/   \    /-|30|-\
@-<                >--<        >-@
   \   /-|24|-\   /    \-|30|-/
    \-<        >-/
       \-|24|-/
6
-}
main = interact answer
answer = show . (`div` 2) . length . filter (== '|')
