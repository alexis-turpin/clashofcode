{-
You are required to write a program that finds the number of vowels in each word of a sentence.

- Words are separated by a single space.
- The sentence may consist of letters, numbers and/or special characters. Specifically, it may contain any character in the range of characters having an ASCII value of 33 to 126 inclusive.

INPUT:
A single line of text consisting of at least one word.

OUTPUT:
On a single line, output the number of vowels in each word of the provided sentence. Numbers are separated by a single space.

CONSTRAINTS:
1 ≤ Length of the sentence < 1024

List of vowels your program needs to consider:
A
E
I
O
U
a
e
i
o
u

EXAMPLE:
Input
CodinGame rocks
Output
4 1
-}
import Data.Char (toLower)

main :: IO ()
main = do
    sentence <- getLine
    putStrLn $ unwords $ map show $ map countVowels $ words sentence

countVowels :: String -> Int
countVowels = length . filter ((`elem` "aeiou") . toLower)
