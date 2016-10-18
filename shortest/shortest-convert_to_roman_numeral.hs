{-
Your program must convert an integer into its Roman numeral representation.

The Roman numerals used here are:
Symbol	Value
I	1
V	5
X	10
L	50
C	100
D	500
M	1000

To read a Roman number:
a symbol is limited to appearing up to only three times in a row (except M).
a symbol following a larger or equal symbol is added to the symbol. For example, 6 is written VI.
a symbol preceding a larger symbol will subtract itself from the symbol. However, only certain subtractions are aloud in this exercise. They are:
I can be subtracted from V or X when I precedes V or X (ex. : 4 is IV),
X can be subtracted from L or C when X precedes L or C (ex. : 40 is XL),
C can be subtracted from D or M when C precedes D or M (ex. : 900 is CM),
the subtraction happens before the addition.
the symbols are grouped in descending order, except for the above subtractions. For example, 1030 is written MXXX and not XXXM.

INPUT:
X an integer.

OUTPUT:
A string containing the Roman number equal to X.

CONSTRAINTS:
0 < X < 5000

EXAMPLE:
Input
6

1945
Output
VI

MCMXLV
-}
import Data.List
import Data.List.Split
main=do;x<-readLn::IO Int;putStr$replace"IIII""IV"$replace"VIIII""IX"$replace"LXXXX""XC"$r x
r 0 = []
r x
  | x >= 1000 = 'M' : r(x-1000)
  | x >= 500 = 'D' : r(x-500)
  | x >= 100 = 'C' : r(x-100)
  | x >= 50 = 'L' : r(x-50)
  | x >= 10 = 'X' : r(x-10)
  | x >= 5 = 'V' : r(x-5)
  | otherwise = 'I' : r(x-1)
replace old new = intercalate new . splitOn old
