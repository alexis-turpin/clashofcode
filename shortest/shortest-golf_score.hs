{-
In golf course, each hole has a "par", value which is the maximum number of swings that players should ideally need to clear the hole. 

Once a player has cleared the hole, the par is subtracted from the player's effective swing count, resulting in the player's score for that hole (i.e. 2 swings for a par 3 scores -1).

The final score for a player on a course is the total of his scores for each hole in the course.

Given a score card for a 18-hole course, your program must output the player's score.
Input
Line 1: 18 numbers separated by spaces, representing the pars for each hole.
Line 2: 18 numbers separated by spaces, representing the player's swing count for each hole.
Output
Line 1: the player's final score for the course.
Example
Input
4 4 3 4 4 5 4 3 5 4 3 4 5 4 4 3 4 5
4 3 2 4 3 4 3 3 4 4 3 4 6 4 5 3 3 4
Output
-6
-}
main=interact$show.p.lines
p[a,b]=sum$zipWith(-)(m b)(m a)
m=map read.words
