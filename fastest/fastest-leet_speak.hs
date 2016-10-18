{-
Your program must read the string given on the standard input and print to the standard output the same string converted into 1337 speak.

To convert text into 1337 speak, one must replace (whether upper or lower case):
'O' with '0'.
'L' with '1'.
'Z' with '2'.
'E' with '3'.
'A' with '4'.
'S' with '5'.
'G' with '6'.
'T' with '7'.
'B' with '8'.
'Q' with '9'.

INPUT:
A string S.

OUTPUT:
S converted to 1337 speak.

CONSTRAINTS:
S contains at least 1 character.

EXAMPLE:
Input
Hello World
Output
H3110 W0r1d
-}
import Data.Char
import Data.Maybe

main :: IO ()
main = interact leetSpeek

leetSpeek = map leetChar

leetChar x = fromMaybe x $ lookup (toUpper x) table

table = [('O', '0')
        ,('L', '1')
        ,('Z', '2')
        ,('E', '3')
        ,('A', '4')
        ,('S', '5')
        ,('G', '6')
        ,('T', '7')
        ,('B', '8')
        ,('Q', '9')]
