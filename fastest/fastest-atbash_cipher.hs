{-
Your program must decrypt a text with Atbash cipher -- a simple substitution cipher.

It consists in substituting a (the first letter) for z (the last), b (the second) for y (one before last), and so on, reversing the alphabet.

INPUT:
Line 1: an encrypted word.

OUTPUT:
Line 1: the decrypted word.

CONSTRAINTS:
The given word contains only lowercase latin letters (a-z).

EXAMPLE:
Input
zyxabc
Output
abczyx
-}
import Data.Char

main = interact $ map cipher

cipher x = chr $ ord 'z' - ord x + ord 'a'
