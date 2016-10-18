{-
Check if a positive number is happy or not.

A number is called happy when repeatedly summing the square of its digits yields 1.

S(86) = 8^2 + 6^2 = 64 + 36 = 100
S(100) = 1^2 + 0^2 + 0^2 = 1

86 IS HAPPY

INPUT:
An integer N

OUTPUT:
A sentence N IS HAPPY or N IS UNHAPPY

CONSTRAINTS:
0<N<10^20

EXAMPLE:
Input
404
Output
404 IS HAPPY
-}
import Data.Char
import Text.Printf
main=do;n<-readLn::IO Int;putStr$a n
a n=printf "%d IS %sHAPPY" n$if h n ==1 then""else"UN"
h x|x<10=x|True=h$sum$map((^2).digitToInt)$show x
