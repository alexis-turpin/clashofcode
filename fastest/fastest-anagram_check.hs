{-
The anagram of a word is a word written with all the same letters, but not necessarily in the same order.

Your program must indicate whether two given words are anagrams of each other. You must write to the standard output 1 if the words are anagrams, 0 if they are not.

INPUT:
Line 1: Two words (S1 and S2) separated by a space.

OUTPUT:
1 if S1 and S2 are anagrams, 0 otherwise.

CONSTRAINTS:
S and S2 contain at least 1 character.
S and S2 contain less than 1024 characters.
S and S2 contain only lowercase letters.

EXAMPLE:
Input
creative reactive
Output
1
-}
import Data.List

main = do
    [a, b] <- fmap words getLine
    if sort a == sort b
        then print 1
        else print 0
