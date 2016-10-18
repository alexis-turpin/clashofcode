{-
A phone contains a directory of known number/name associations, as well as a black list of number prefixes: all numbers that start with one of those prefixes must always be rejected.

Your program must read a series of numbers and decide to either accept or reject each call, presenting the name of the caller when possible. If the name of the caller is not in the known directory, the calling number must be displayed instead.

It is possible to reject a number from the directory of known numbers.

INPUT:
Line 1: D, the number of entries in the directory of known numbers.
D next lines: a number and the corresponding name, separated by a single space. The name itself may contain any character except a space.
Next line: B, the number of blacklisted prefixes.
B next lines: a blacklisted prefix.
Next line: N, the number of phone numbers to process.
N next lines: a phone number.

OUTPUT:
N lines: for each of the given numbers, in the same order as input - accept or reject, a single space, then the name or number of the caller.

CONSTRAINTS:
0 ≤ D ≤ 10
0 ≤ B ≤ 10
1 ≤ N ≤ 50
Phone numbers are between 1 and 10 digits long
Prefixes are between 1 and 10 digits long
Names are between 1 and 50 characters long

EXAMPLE:
Input
1
12345 Mom
1
54321
2
12345
54321
Output
accept Mom
reject 54321
-}
import System.IO
import Control.Monad
import Data.Maybe
import Data.List

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering -- DO NOT REMOVE
    
    -- Auto-generated code below aims at helping you parse
    -- the standard input according to the problem statement.
    
    input_line <- getLine
    let d = read input_line :: Int
    
    contacts <- replicateM d $ do
        input_line <- getLine
        let input = words input_line
        let number = (input!!0)
        let name = input!!1
        return (number, name)

    input_line <- getLine
    let b = read input_line :: Int
    
    blacklist <- replicateM b $ do
        input_line <- getLine
        let prefix = input_line :: String
        return (prefix)

    input_line <- getLine
    let n = read input_line :: Int
    
    replicateM_ n $ do
        input_line <- getLine
        let caller = input_line :: String
        let name = fromMaybe caller $ lookup caller contacts
        putStrLn $ (acceptOrReject blacklist caller) ++ " " ++ name

acceptOrReject blacklist caller
    | any (\x -> isPrefixOf x caller) blacklist = "reject"
    | otherwise = "accept"
