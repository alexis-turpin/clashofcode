{-
The game mode is REVERSE: You do not have access to the statement. You have to guess what to do by observing the following set of tests:
01 Test 1
.2A1N5Y64! §C*H*zAtrR
ANYCHAR
02 Test 2
ahHdnDbiU
HDU
03 Test 3
Ab
A
04 Test 4
Hello World
HW
05 Test 5
Homer J. Simpson
HJS
06 Test 6
#1Cb2dA3h6P?9qS8
CAPS
-}
import Data.Char
main = interact answer
answer = filter isUpper
