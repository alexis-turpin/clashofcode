{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
zyxabc
abczyx
02 Test 2
svool
hello
03 Test 3
abcdefghijklmnopqrstuvwxyz
zyxwvutsrqponmlkjihgfedcba
04 Test 4
nmnmnmnmnm
mnmnmnmnmn
05 Test 5
xlwrmtznvwlgxlnrhiformt
codingamedotcomisruling
-}
import Data.Char

main :: IO ()
main = interact $ map a

a :: Char -> Char
a x = chr $ ord 'z' - ord x + ord 'a'
