{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
F
15
02 Test 2
5
5
03 Test 3
FF
255
04 Test 4
4B68
19304
05 Test 5
83DF47
8642375
06 Test 6
10
16
-}
import Numeric

main = interact getHex

getHex = show . fst . head . readHex
