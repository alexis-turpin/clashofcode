{-
Your program must output whether the year given on the standard input is a leap year (true) or not (false).
To know if a year is a leap year, follow this guide:
If the year is divisible by 4, go to step 2, otherwise go to step 5.
If the year is divisible by 100, go to step 3. Otherwise, go to step 4.
If the year is divisible by 400, go to step 4. Otherwise, go to step 5.
The year is a leap year (it has 366 days).
The year is not a leap year (it has 365 days).

INPUT:
year an integer

OUTPUT:
true if year is a leap year, false otherwise.

CONSTRAINTS:
0 < year < 10000

EXAMPLE:
Input
2000
Output
true
-}
import Data.Char
main = interact$map toLower.show.a.read
a x|x`rem`4>0=False|x`rem`100>0=True|x`rem`400==0=True|True=False
