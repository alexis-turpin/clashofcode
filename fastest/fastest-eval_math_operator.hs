{-
Your program must insert the given operator (+, -, / or *) at index X of an integer number and output the result of the operation.

The operation is always valid and the result is always an integer. Plus "+" and minus "-" are the only operators that can be inserted at index 0.

INPUT:
A character O, an integer X and an integer N, separated by spaces. O is a mathematical operator from +, -, / and *.

OUTPUT:
The result of the operation obtained by inserting O in N at index X.

CONSTRAINTS:
-1 000 000 000 < X, N < 1 000 000 000

EXAMPLE:
Input
- 2 123
Output
9 (12 - 3)
-}
main :: IO ()
main = do
    [operator, k, n] <- fmap words getLine
    let x = take (read k) n
    let y = drop (read k) n
    if read k == 0
        then if operator == "+"
            then putStrLn n
            else putStrLn $ operator ++ n
        else print $ go operator (read x) (read y)

go :: String -> Integer -> Integer -> Integer
go "-" x y = x - y
go "+" x y = x + y
go "/" x y = x `div` y
go "*" x y = x * y
