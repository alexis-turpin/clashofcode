{-
Your program must perform a binary XOR on two binary numbers given through the standard input and print the result to the standard output.

XOR Truth Table
Input	Output
A	B
0	0	0
0	1	1
1	0	1
1	1	0

Warning, the number of binary digits must remain the same.

INPUT:
2 binary numbers n1 and n2, separated by spaces.

OUTPUT:
The result of a XOR between n1 and n2.

CONSTRAINTS:
n1 and n2 have the same number of digits.

EXAMPLE:
Input
001 011
Output
010
-}
main :: IO ()
main = do
    input_line <- getLine
    let [a, b] = words input_line
    putStrLn $ answer a b

answer :: String -> String -> String
answer = zipWith (curry myXor)

myXor :: (Char, Char) -> Char
myXor ('0', '0') = '0'
myXor ('0', '1') = '1'
myXor ('1', '0') = '1'
myXor ('1', '1') = '0'
