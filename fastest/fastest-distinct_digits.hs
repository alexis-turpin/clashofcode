{-
You are caught by maths geeks and they won't free you until you solve a problem. You need to save your life by solving the problem.

They give you two integers N and K. You must find the smallest and the largest positive integers each containing exactly N digits and having exactly K distinct digits from 0 to 9.

For example: 99987 has only 3 distinct digits 9, 8 and 7.

Obviously, leading 0’s are not allowed, for example: 0145 is not allowed. Input is given such that the answer will always exist.

INPUT:
Line 1: Number of digits N and number of distinct digits K

OUTPUT:
Line 1: Print the smallest and the largest number (space separated).

CONSTRAINTS:
1 ≤ N ≤ 18
1 ≤ K ≤ 10

EXAMPLE:
Input
3 3
Output
102 987
-}
import Data.List
import Control.Monad

main :: IO ()
main = do
    [n, k] <- fmap (map read . words) getLine :: IO [Int]
    let possibilities =
            filter ((== k) . length . group . sort) $
            filter ((/= '0') . head) $
            map (concatMap show) $
            replicateM n [0..9]
    putStrLn $ unwords [minimum possibilities, maximum possibilities]
