{-
The nucleotides inside a DNA sequence can be represented by a string composed by A, C, G and T. A sample string representing a DNA sequence is "ATGCTTCAGAAAAGGTCAGCG".

Your task is to count how many times the symbols A, C, G and T appear in the string s.

INPUT:
A single line, composed of A, C, G and T.

OUTPUT:
The number of times A, C, G and T appear in the string s, separated by a space.

CONSTRAINTS:
0 < len(s) < 1000

EXAMPLE:
Input
AACT
Output
2 1 0 1
-}
main :: IO ()
main = do
    s <- getLine
    putStrLn $ unwords $ map show $ answer s

answer xs = map c "ACGT"
  where
    c x = length $ filter (== x) xs
