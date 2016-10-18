{-
Given a sequence of N integers, calculate the lowest common multiple (LCM) of the elements of this sequence.

Hint: LCM(a, b, c) = LCM(a, LCM(b, c))

INPUT:
Line 1: an integer N
Line 2: N space-separated integers

OUTPUT:
The lowest common multiple of the sequence.

CONSTRAINTS:
1 ≤ N ≤ 1000
1 ≤ every integer of the sequence ≤ 100

EXAMPLE:
Input
4
42 6 11 83
Output
38346
-}
main :: IO ()
main = do
    _ <- getLine
    xs <- fmap (map read . words) getLine :: IO [Int]
    print $ lcmMulti xs

lcmMulti :: [Int] -> Int
lcmMulti = foldr1 lcm
