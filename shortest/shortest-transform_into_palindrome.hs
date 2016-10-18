{-
Given a string, transform it (by shuffling its contents) into a palindrome!

A palindrome is a string that reads the same left-to-right and right-to-left.

INPUT:
s Can contain letters, digits and/or ?, !

OUTPUT:
If it is not possible you should return imp (for impossible) and if there is more than one solution return the first one in the lexicographic order.

EXAMPLE:
Input
cdcd
Output
cddc
-}
import Data.List

main = do
    xs <- getLine
    let xss = group . sort $ xs
    let isImpossible = any (odd . length) xss
    if isImpossible then
        putStrLn "imp"
    else
        putStrLn $ concat $ dupe $ makePalindrome xss

makePalindrome [] = []
makePalindrome (xs:rest) = [head xs] : makePalindrome xs'
  where
    xs'
        | length xs == 2 = rest
        | otherwise = drop 2 xs : rest

dupe xs = xs ++ reverse xs
