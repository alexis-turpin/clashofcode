{-
You are given a sequence of N integers. Every element of the sequence can be paired with another element that is equal to it, except for one number. Your task is to find that singular integer.

Every element can be in at most one pair and it is guaranteed that there is only one number that can't be paired.

INPUT:
Line 1: an integer N
Line 2: N space-separated integers

OUTPUT:
Line 1: an integer, the element that can't be paired

CONSTRAINTS:
1 ≤ N ≤ 100
1 ≤ every integer of the sequence ≤ 100

EXAMPLE:
Input
5
2 4 2 4 1
Output
1
-}
import Data.List
main=interact$head.filter((>1).length).group.sort.concat.tail.words
