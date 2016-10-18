{-
You have intercepted an enemy communication signal, but it is encrypted. However, you know that the message was encrypted using the following algorithm:

For every letter in the message M, an integer E representing the distance away from the letter z in the English alphabet is outputted onto a new line. Spaces are given a value of -1.

You must decrypt this communication, or risk losing the war!

INPUT:
Line 1: An integer N for the number of letters to decrypt.
Next N lines: An integer E representing a single letter of the message.

OUTPUT:
Line 1: A lowercase string representing the decrypted message.

CONSTRAINTS:
1 ≤ N ≤ 100

EXAMPLE:
Input
5
18
21
14
14
11
-}
import System.IO
import Control.Monad
import Data.Char

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering -- DO NOT REMOVE
    
    -- Auto-generated code below aims at helping you parse
    -- the standard input according to the problem statement.
    
    input_line <- getLine
    let n = read input_line :: Int
    
    xs <- replicateM n $ do
        input_line <- getLine
        let x = read input_line :: Int
        return x
    
    putStrLn $ answer xs

answer :: [Int] -> String
answer = map convert

convert :: Int -> Char
convert x
    | x == (-1) = ' '
    | otherwise = chr $ ord 'z' - x
