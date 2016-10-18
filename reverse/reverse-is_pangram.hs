{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
Abcde fghij klmno pqrs tuv wxyz
true
02 Test 2
this sentence does not have what it should
false
03 Test 3
Portez ce vieux whisky au juge blond qui fume
true
04 Test 4
abcde ghijklmnopqrstuvwxyz
false
05 Test 5
abcde fghij klmno pqrs tuv wxyy
false
-}
import Data.Char (toLower, isAlpha)
import Data.List ((\\))

main = interact answer

answer = map toLower . show . isPangram

isPangram = null . (['a'..'z'] \\) . filter isAlpha . map toLower
