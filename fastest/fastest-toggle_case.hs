{-
Your program must switch the case of each character of the given string.

INPUT:
S a string.

OUTPUT:
S with lowercase letters instead of uppercase letters and vice-versa.

CONSTRAINTS:
S contains at least 1 character.

EXAMPLE:
Input
Hello World
Output
hELLO wORLD
-}
import Data.Char

main = interact (unwords . map (map invertCase) . words)

invertCase x = toggleCase x
  where
    toggleCase
        | isUpper x = toLower
        | otherwise = toUpper
