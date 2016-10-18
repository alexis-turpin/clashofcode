{-
Hello World
hELLO wORLD
02 Test 2
$ABCDEF g12
$abcdef G12
03 Test 3
A
a
04 Test 4
c0DINg4ME
C0dinG4me
-}
import Data.Char
main=interact changeString
changeString = map changeCase
changeCase x
    | isUpper x = toLower x
    | otherwise = toUpper x
