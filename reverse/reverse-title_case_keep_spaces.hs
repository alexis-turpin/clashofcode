{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
hello world
Hello World
02 Test 2
ABCDEF
Abcdef
03 Test 3
there is no spoon
There Is No Spoon
04 Test 4
hello   world
Hello   World
05 Test 5
HaVe fUN And KEEP cOding
Have Fun And Keep Coding
-}
import Data.Char
import Data.List.Split

main = interact $ unwords . map titleCase . splitOn " "

titleCase (x:xs) = toUpper x : map toLower xs
titleCase _ = []
