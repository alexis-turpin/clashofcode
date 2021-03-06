{-
Your program must output the input word after shifting its letters. Letters whose index would be negative are placed at the end of the word. The shift amount can be greater than the length of the word, in that case it loops.

INPUT:
Line 1: The number N of shift to the left to apply.
Line 2: The word word you must shift.

OUTPUT:
Line 1: The shifted word.

CONSTRAINTS:
0 < N < 10

EXAMPLE:
Input
5
breakfast
-}

main :: IO ()
main = do
    n <- readLn :: IO Int
    word <- getLine
    putStrLn $ shift n word

shift :: Int -> [a] -> [a]
shift n xs = take (length xs) $ drop n $ cycle xs
