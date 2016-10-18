{-
Your program must find all the "double letter" words. A word is "double letter" if it contains at least two identical letters next to each other.

Letter case does not matter, so A == a.

INPUT:
A string S, words separated by whitespaces.

OUTPUT:
An integer, the number of the double letter words.

CONSTRAINTS:
S only contains latin letters and whitespaces.

EXAMPLE:
Input
Double letter words are cool
-}
import Data.Char

main :: IO ()
main = do
    s <- getLine
    print $ answer s

answer :: String -> Int
answer = length . filter isDoubleLetter . words . map toLower

isDoubleLetter :: String -> Bool
isDoubleLetter xs = any (uncurry (==)) $ zip xs (tail xs)
