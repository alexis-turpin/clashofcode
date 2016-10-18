{-
Given a series of letters, your program must find the first one that is not correctly placed regarding the alphabetical order.
Input
Line 1: a series of letters, uppercase.
Output
Line 1: the first letter that does not respect the alphabetical order.
Constraints
There are always at least two letters and less than 26.
The series may start and end anywhere in the alphabet.
Some letters may be entirely missing, but the remaining ones will be in order - except one. There are no duplicate letters.
There is always one and only one incorrectly placed letter.
Example
Input
ABCDFEGH
Output
E
-}
import Data.List
main=interact$return.fst.head.filter(uncurry(/=)).(zip=<<sort)
